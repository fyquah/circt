//===- LowerBundleVectorTypes.cpp - Expand WhenOps into muxed operations ---*-
// C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file defines the LowerBundleVectorTypes pass.
//
//===----------------------------------------------------------------------===//

#include "PassDetails.h"
#include "circt/Dialect/FIRRTL/FIRRTLOps.h"
#include "circt/Dialect/FIRRTL/FIRRTLTypes.h"
#include "circt/Dialect/FIRRTL/FIRRTLVisitors.h"
#include "circt/Dialect/FIRRTL/Passes.h"
#include "mlir/IR/ImplicitLocOpBuilder.h"
#include "llvm/Support/Parallel.h"

using namespace circt;
using namespace firrtl;

// Helper to peel off the outer most flip type from an aggregate type that has
// all flips canonicalized to the outer level, or just return the bundle
// directly. For any ground type, returns null.
static FIRRTLType getCanonicalAggregateType(Type originalType) {
  FIRRTLType unflipped = originalType.dyn_cast<FIRRTLType>();
  if (auto flipType = originalType.dyn_cast<FlipType>())
    unflipped = flipType.getElementType();

  return TypeSwitch<FIRRTLType, FIRRTLType>(unflipped)
      .Case<BundleType, FVectorType>([](auto a) { return a; })
      .Default([](auto) { return nullptr; });
}
// TODO: check all argument types
namespace {
// This represents a flattened bundle field element.
struct FlatBundleFieldEntry {
  // This is the underlying ground type of the field.
  FIRRTLType type;
  // This is a suffix to add to the field name to make it unique.
  SmallString<16> suffix;
  // This indicates whether the field was flipped to be an output.
  bool isOutput;

  // Helper to determine if a fully flattened type needs to be flipped.
  FIRRTLType getPortType() { return isOutput ? FlipType::get(type) : type; }

  FlatBundleFieldEntry(const FIRRTLType &type, StringRef suffix, bool isOutput)
      : type(type), suffix(suffix), isOutput(isOutput) {}
};
} // end anonymous namespace

// Peal one layer of an aggregate type into its components.
static SmallVector<FlatBundleFieldEntry> peelType(FIRRTLType type) {
  bool isFlipped = false;
  SmallVector<FlatBundleFieldEntry> retval;
  // Strip off an outer flip type. Flip types don't don't have a field ID,
  // and so there is no need to increment the field ID.
  if (auto flip = type.dyn_cast<FlipType>()) {
    type = flip.getElementType();
    isFlipped = !isFlipped;
  }
  TypeSwitch<FIRRTLType>(type)
      .Case<BundleType>([&](auto bundle) {
        SmallString<16> tmpSuffix;
        // Otherwise, we have a bundle type.  Break it down.
        for (auto &elt : bundle.getElements()) {
          // Construct the suffix to pass down.
          tmpSuffix.resize(0);
          tmpSuffix.push_back('_');
          tmpSuffix.append(elt.name.getValue());
          if (auto flip = elt.type.template dyn_cast<FlipType>()) {
            retval.emplace_back(flip.getElementType(), tmpSuffix, !isFlipped);
          } else {
            retval.emplace_back(elt.type, tmpSuffix, isFlipped);
          }
        }
      })
      .Case<FVectorType>([&](auto vector) {
        // Increment the field ID to point to the first element.
        for (size_t i = 0, e = vector.getNumElements(); i != e; ++i) {
          retval.emplace_back(vector.getElementType(), "_" + std::to_string(i),
                              isFlipped);
        }
      })
      .Default([&](auto) { retval.emplace_back(type, "", isFlipped); });
  return retval;
}

// Convert an aggregate type into a flat list of fields.  This is used
// when working with instances and mems to flatten them.
static void flattenType(FIRRTLType type,
                        SmallVectorImpl<FlatBundleFieldEntry> &results) {
  std::function<void(FIRRTLType, StringRef, bool)> flatten =
      [&](FIRRTLType type, StringRef suffixSoFar, bool isFlipped) {
        // Strip off an outer flip type.
        if (auto flip = type.dyn_cast<FlipType>()) {
          type = flip.getElementType();
          isFlipped = !isFlipped;
        }
        TypeSwitch<FIRRTLType>(type)
            .Case<BundleType>([&](auto bundle) {
              SmallString<16> tmpSuffix(suffixSoFar);
              // Otherwise, we have a bundle type.  Break it down.
              for (auto &elt : bundle.getElements()) {
                // Construct the suffix to pass down.
                tmpSuffix.resize(suffixSoFar.size());
                tmpSuffix.push_back('_');
                tmpSuffix.append(elt.name.getValue());
                // Recursively process subelements.
                flatten(elt.type, tmpSuffix, isFlipped);
              }
              return;
            })
            .Case<FVectorType>([&](auto vector) {
              for (size_t i = 0, e = vector.getNumElements(); i != e; ++i) {
                flatten(vector.getElementType(),
                        (suffixSoFar + "_" + std::to_string(i)).str(),
                        isFlipped);
              }
              return;
            })
            .Default([&](auto) {
              results.emplace_back(type, suffixSoFar.str(), isFlipped);
              return;
            });
      };

  return flatten(type, "", false);
}

/// Copy annotations from \p annotations to \p loweredAttrs, except annotations
/// with "target" key, that do not match the field suffix.
static void filterAnnotations(ArrayAttr annotations,
                              SmallVector<Attribute> &loweredAttrs,
                              StringRef suffix) {
  if (!annotations || annotations.empty())
    return;

  for (auto opAttr : annotations) {
    auto di = opAttr.dyn_cast<DictionaryAttr>();
    if (!di) {
      loweredAttrs.push_back(opAttr);
      continue;
    }
    auto targetAttr = di.get("target");
    if (!targetAttr) {
      loweredAttrs.push_back(opAttr);
      continue;
    }

    ArrayAttr subFieldTarget = targetAttr.cast<ArrayAttr>();
    SmallString<16> targetStr;
    for (auto fName : subFieldTarget) {
      std::string fNameStr = fName.cast<StringAttr>().getValue().str();
      // The fNameStr will begin with either '[' or '.', replace it with an
      // '_' to construct the suffix.
      fNameStr[0] = '_';
      // If it ends with ']', then just remove it.
      if (fNameStr.back() == ']')
        fNameStr.erase(fNameStr.size() - 1);

      targetStr += fNameStr;
    }
    // If no subfield attribute, then copy the annotation.
    if (targetStr.empty()) {
      loweredAttrs.push_back(opAttr);
      continue;
    }
    // If the subfield suffix doesn't match, then ignore the annotation.
    if (suffix.find(targetStr.str().str()) != 0)
      continue;

    NamedAttrList modAttr;
    for (auto attr : di.getValue()) {
      // Ignore the actual target annotation, but copy the rest of annotations.
      if (attr.first.str() == "target")
        continue;
      modAttr.push_back(attr);
    }
    loweredAttrs.push_back(
        DictionaryAttr::get(annotations.getContext(), modAttr));
  }
}

/// Copy annotations from \p annotations into a new AnnotationSet and return it.
/// This removes annotations with "target" key that does not match the field
/// suffix.
static AnnotationSet filterAnnotations(AnnotationSet annotations,
                                       StringRef suffix) {
  if (annotations.empty())
    return annotations;
  SmallVector<Attribute> loweredAttrs;
  filterAnnotations(annotations.getArrayAttr(), loweredAttrs, suffix);
  return AnnotationSet(ArrayAttr::get(annotations.getContext(), loweredAttrs));
}

namespace {
class AggregateUserVisitor
    : public FIRRTLVisitor<AggregateUserVisitor, void, ArrayRef<Value>> {
public:
  AggregateUserVisitor(ImplicitLocOpBuilder *builder) : builder(builder) {}
  using FIRRTLVisitor<AggregateUserVisitor, void, ArrayRef<Value>>::visitDecl;
  using FIRRTLVisitor<AggregateUserVisitor, void, ArrayRef<Value>>::visitExpr;
  using FIRRTLVisitor<AggregateUserVisitor, void, ArrayRef<Value>>::visitStmt;

  void visitExpr(SubfieldOp op, ArrayRef<Value> mapping);
  void visitExpr(SubindexOp op, ArrayRef<Value> mapping);
  void visitExpr(SubaccessOp op, ArrayRef<Value> mapping);

private:
  // The builder is set and maintained in the main loop.
  ImplicitLocOpBuilder *builder;
};
} // namespace

void AggregateUserVisitor::visitExpr(SubindexOp op, ArrayRef<Value> mapping) {
  // Get the input bundle type.
  Value input = op.input();
  auto inputType = input.getType();
  if (auto flipType = inputType.dyn_cast<FlipType>())
    inputType = flipType.getElementType();

  op.replaceAllUsesWith(mapping[op.index()]);

  // Remember to remove the original op.
  op.erase();
}

void AggregateUserVisitor::visitExpr(SubaccessOp op, ArrayRef<Value> mapping) {
  // Get the input bundle type.
  Value input = op.input();
  auto inputType = input.getType();
  if (auto flipType = inputType.dyn_cast<FlipType>())
    inputType = flipType.getElementType();

  auto selectWidth =
      op.index().getType().cast<FIRRTLType>().getBitWidthOrSentinel();

  // if we were given a mapping, this is a write and the mapping is the write
  // Value
  for (size_t index = 0, e = inputType.cast<FVectorType>().getNumElements();
       index < e; ++index) {
    auto cond = builder->create<EQPrimOp>(
        op.index(), builder->createOrFold<ConstantOp>(
                        UIntType::get(op.getContext(), selectWidth),
                        APInt(selectWidth, index)));
    builder->create<WhenOp>(cond, false, [&]() {
      builder->create<ConnectOp>(builder->create<SubindexOp>(input, index),
                                 mapping[0]);
    });
  }
}

void AggregateUserVisitor::visitExpr(SubfieldOp op, ArrayRef<Value> mapping) {
  // Get the input bundle type.
  Value input = op.input();
  auto inputType = input.getType();
  if (auto flipType = inputType.dyn_cast<FlipType>())
    inputType = flipType.getElementType();
  auto bundleType = inputType.cast<BundleType>();

  op.replaceAllUsesWith(mapping[*bundleType.getElementIndex(op.fieldname())]);

  // Remember to remove the original op.
  op.erase();
}

//===----------------------------------------------------------------------===//
// Module Type Lowering
//===----------------------------------------------------------------------===//
namespace {
struct TypeLoweringVisitor : public FIRRTLVisitor<TypeLoweringVisitor> {

  TypeLoweringVisitor(MLIRContext *context) : context(context) {}
  using FIRRTLVisitor<TypeLoweringVisitor>::visitDecl;
  using FIRRTLVisitor<TypeLoweringVisitor>::visitExpr;
  using FIRRTLVisitor<TypeLoweringVisitor>::visitStmt;

  // If the referenced operation is a FModuleOp or an FExtModuleOp, perform
  // type lowering on all operations.
  void lowerModule(Operation *op);

  bool lowerArg(FModuleOp module, size_t argIndex,
                SmallVectorImpl<ModulePortInfo> &newArgs);
  std::pair<BlockArgument, firrtl::ModulePortInfo> addArg(FModuleOp module, unsigned insertPt, FIRRTLType type, 
                    bool isOutput, StringRef nameSuffix, ModulePortInfo& oldArg);

  // Helpers to manage state.
  void visitDecl(FExtModuleOp op);
  void visitDecl(FModuleOp op);
  void visitDecl(InstanceOp op);
  //    void visitDecl(MemOp op, ArrayRef<Value> mapping);
  void visitDecl(NodeOp op);
  void visitDecl(RegOp op);
  void visitDecl(WireOp op);
  void visitDecl(RegResetOp op);
  void visitExpr(InvalidValueOp op);
  //    void visitExpr(SubfieldOp op);
  //    void visitExpr(SubindexOp op);
  void visitExpr(SubaccessOp op);
  void visitExpr(MuxPrimOp op);
  void visitStmt(ConnectOp op);
  void visitStmt(WhenOp op);
  void visitStmt(PartialConnectOp op);
  void recursivePartialConnect(Value a, FIRRTLType aType, Value b,
                               FIRRTLType bType, unsigned aIndex,
                               unsigned bIndex, bool aFlip = false);
  /// Connect two values, truncating the source value if it is a larger width.
  ConnectOp emitTruncatingConnect(Value dest, Value src);

private:
  void processUsers(Value val, ArrayRef<Value> mapping);

  MLIRContext *context;

  // The builder is set and maintained in the main loop.
  ImplicitLocOpBuilder *builder;

  // State to keep track of arguments and operations to clean up at the end.
  SmallVector<Operation *, 16> opsToRemove;
};
} // namespace

void TypeLoweringVisitor::processUsers(Value val, ArrayRef<Value> mapping) {
  AggregateUserVisitor aggV(builder);
  for (auto user : llvm::make_early_inc_range(val.getUsers())) {
    aggV.dispatchVisitor(user, mapping);
  }
}

void TypeLoweringVisitor::lowerModule(Operation *op) {
  if (auto module = dyn_cast<FModuleOp>(op))
    return visitDecl(module);
  if (auto extModule = dyn_cast<FExtModuleOp>(op))
    return visitDecl(extModule);
}

// Creates and returns a new block argument of the specified type to the
// module. This also maintains the name attribute for the new argument,
// possibly with a new suffix appended.
std::pair<BlockArgument, firrtl::ModulePortInfo>
TypeLoweringVisitor::addArg(FModuleOp module, unsigned insertPt, FIRRTLType type, bool isOutput,
                            StringRef nameSuffix, ModulePortInfo &oldArg) {
  Block *body = module.getBodyBlock();

  // Append the new argument.
  auto newValue = body->insertArgument(insertPt, oldArg.type);

  // Save the name attribute for the new argument.
  auto name =
      builder->getStringAttr(oldArg.name.getValue().str() + nameSuffix.str());

  // Populate the new arg attributes.
  AnnotationSet newAnnotations =
      filterAnnotations(oldArg.annotations, nameSuffix);

  // Flip the direction if the field is an output.
  auto direction = (Direction)((unsigned)oldArg.direction ^ isOutput);

  return std::make_pair(
      newValue, firrtl::ModulePortInfo{name, type, direction, newAnnotations});
}

// Lower arguments with bundle type by flattening them.
bool TypeLoweringVisitor::lowerArg(FModuleOp module, size_t argIndex,
                                   SmallVectorImpl<ModulePortInfo> &newArgs) {

  auto arg = module.getPortArgument(argIndex);
  // Attempt to get the bundle types, potentially unwrapping an outer flip
  // type that wraps the whole bundle.
  FIRRTLType resultType = getCanonicalAggregateType(arg.getType());

  // If the wire is not a bundle, there is nothing to do.
  if (!resultType)
    return false;

  // Flatten any bundle types.
  SmallVector<FlatBundleFieldEntry> fieldTypes = peelType(resultType);
  SmallVector<Value> lowering;
  for (auto field : llvm::enumerate(fieldTypes)) {
    auto newValue = addArg(module, 1 + argIndex + field.index(),
                           field.value().type,  field.value().isOutput,
                           field.value().suffix, newArgs[argIndex]);
    newArgs.insert(newArgs.begin() + 1 + argIndex + field.index(),
                   newValue.second);
    // Lower any other arguments by copying them to keep the relative order.
    lowering.push_back(newValue.first);
  }

  processUsers(arg, lowering);

  return true;
}

// Expand connects of aggregates
void TypeLoweringVisitor::visitStmt(ConnectOp op) {
  // Attempt to get the bundle types, potentially unwrapping an outer flip
  // type that wraps the whole bundle.
  FIRRTLType resultType = getCanonicalAggregateType(op.src().getType());

  // Ground Type
  if (!resultType) {
    if (SubaccessOp sao =
            dyn_cast_or_null<SubaccessOp>(op.dest().getDefiningOp())) {
      AggregateUserVisitor(builder).visitExpr(sao, ArrayRef<Value>(op.src()));
      opsToRemove.push_back(op);
    }
    return;
  }

  SmallVector<FlatBundleFieldEntry> fields = peelType(resultType);

  // Loop over the leaf aggregates.
  for (auto field : llvm::enumerate(fields)) {
    Value src, dest;
    if (BundleType bundle = resultType.dyn_cast<BundleType>()) {
      src = builder->create<SubfieldOp>(op.src(),
                                        bundle.getElement(field.index()).name);
      dest = builder->create<SubfieldOp>(op.dest(),
                                         bundle.getElement(field.index()).name);
    } else if (FVectorType fvector = resultType.dyn_cast<FVectorType>()) {
      src = builder->create<SubindexOp>(op.src(), field.index());
      dest = builder->create<SubindexOp>(op.dest(), field.index());
    } else {
      op->emitError("Unknown aggregate type");
    }
    if (field.value().isOutput)
      std::swap(src, dest);
    builder->create<ConnectOp>(dest, src);
  }
  opsToRemove.push_back(op);
}

void TypeLoweringVisitor::recursivePartialConnect(Value a, FIRRTLType aType,
                                                  Value b, FIRRTLType bType,
                                                  unsigned aID, unsigned bID,
                                                  bool aFlip) {

  TypeSwitch<FIRRTLType>(aType)
      .Case<BundleType>([&](auto aType) {
        auto bBundle = bType.dyn_cast_or_null<BundleType>();
        if (!bBundle)
          return;
        for (unsigned aIndex = 0, e = aType.getNumElements(); aIndex < e;
             ++aIndex) {
          auto aField = aType.getElements()[aIndex].name;
          auto bIndex = bBundle.getElementIndex(aField.getValue());
          if (!bIndex)
            continue;
          auto &aElt = aType.getElements()[aIndex];
          auto &bElt = bBundle.getElements()[*bIndex];
          if (!aFlip)
            builder->create<PartialConnectOp>(
                builder->create<SubfieldOp>(a, aField),
                builder->create<SubfieldOp>(b, aField));
          else
            builder->create<PartialConnectOp>(
                builder->create<SubfieldOp>(b, aField),
                builder->create<SubfieldOp>(a, aField));
        }
      })
      .Case<FVectorType>([&](auto aType) {
        auto bVector = bType.dyn_cast_or_null<FVectorType>();
        if (!bVector)
          return;

        auto e = std::min<unsigned>(aType.getNumElements(),
                                    bVector.getNumElements());
        auto elemType = bVector.getElementType();

        if (aFlip)
          std::swap(a, b);
        for (size_t i = 0; i != e; ++i) {
          builder->create<PartialConnectOp>(
              builder->create<SubindexOp>(elemType, a, i),
              builder->create<SubindexOp>(elemType, b, i));
        }
      })
      .Case<FlipType>([&](auto aType) {
        recursivePartialConnect(a, FlipType::get(aType), b, bType, aID, bID,
                                !aFlip);
      })
      .Default([&](auto) {
        if (aFlip)
          std::swap(a, b);
        // We transform all partial connects into regular connect statements,
        // however, partial connect allows the LHS statement to be a smaller
        // width than the RHS. We might need to truncate the RHS value.
        emitTruncatingConnect(a, b);
      });
}

/// This creates a connect operation between two values and emits a truncation
/// if the LHS is smaller than the RHS.  This code was lifted from a
/// PartialConnect canonicalization pattern.
ConnectOp TypeLoweringVisitor::emitTruncatingConnect(Value dest, Value src) {
  // Get the types.  Strip off any outer flip.
  auto srcType = src.getType().cast<FIRRTLType>().stripFlip().first;
  auto destType = dest.getType().cast<FIRRTLType>().stripFlip().first;

  auto srcWidth = srcType.getBitWidthOrSentinel();
  auto destWidth = destType.getBitWidthOrSentinel();

  // Check if the source is larger than the destination, if so we will have to
  // emit a truncation.
  if (destType.isa<IntType>() && srcType.isa<IntType>() && srcWidth >= 0 &&
      destWidth >= 0 && destWidth < srcWidth) {
    // firrtl.tail always returns uint even for sint operands.
    IntType tmpType = destType.cast<IntType>();
    if (tmpType.isSigned())
      tmpType = UIntType::get(destType.getContext(), destWidth);
    src = builder->create<TailPrimOp>(tmpType, src, srcWidth - destWidth);
    // Insert the cast back to signed if needed.
    if (tmpType != destType)
      src = builder->create<AsSIntPrimOp>(destType, src);
  }
  return builder->create<ConnectOp>(dest, src);
}

void TypeLoweringVisitor::visitStmt(PartialConnectOp op) {
  Value dest = op.dest();
  Value src = op.src();
  auto destType = dest.getType().cast<FIRRTLType>();
  auto srcType = src.getType().cast<FIRRTLType>();

  // Partial connects are completely removed and replaced by regular connects.
  // This makes this one of the few ops that actually has to do something during
  // this pass the types are not bundles.
  auto tmpType = destType.stripFlip().first;
  if (tmpType.isa<BundleType, FVectorType>()) {
    // Bundle types have to be recursively lowered.
    this->recursivePartialConnect(dest, destType, src, srcType.getPassiveType(),
                                  0, 0);
  } else if (destType.isa<AnalogType>()) {
    // If we are connecting analogs, replace with attach.
    SmallVector<Value, 2> operands{dest, src};
    builder->create<AttachOp>(operands);
  } else {
    // Replace this partial connect with a regular connect.
    emitTruncatingConnect(dest, src);
  }
  opsToRemove.push_back(op);
}

void TypeLoweringVisitor::visitStmt(WhenOp op) {
  // The WhenOp itself does not require any lowering, the only value it uses is
  // a one-bit predicate.  Recursively visit all regions so internal operations
  // are lowered.

  // Visit operations in the then block.
  for (auto &op : op.getThenBlock()) {
    builder->setInsertionPoint(&op);
    builder->setLoc(op.getLoc());
    dispatchVisitor(&op);
  }

  // If there is no else block, return.
  if (!op.hasElseRegion())
    return;

  // Visit operations in the else block.
  for (auto &op : op.getElseBlock()) {
    builder->setInsertionPoint(&op);
    builder->setLoc(op.getLoc());
    dispatchVisitor(&op);
  }
}

// Expand muxes of aggregates
void TypeLoweringVisitor::visitExpr(MuxPrimOp op) {
  Value result = op.result();

  // Attempt to get the bundle types, potentially unwrapping an outer flip
  // type that wraps the whole bundle.
  FIRRTLType resultType = getCanonicalAggregateType(result.getType());

  // If the wire is not a bundle, there is nothing to do.
  if (!resultType)
    return;

  SmallVector<FlatBundleFieldEntry, 8> fieldTypes = peelType(resultType);
  SmallVector<Value> lowered;

  // Loop over the leaf aggregates.
  for (auto field : llvm::enumerate(fieldTypes)) {
    Value high, low;
    if (BundleType bundle = resultType.dyn_cast<BundleType>()) {
      high = builder->create<SubfieldOp>(op.high(),
                                         bundle.getElement(field.index()).name);
      low = builder->create<SubfieldOp>(op.low(),
                                        bundle.getElement(field.index()).name);
    } else if (FVectorType fvector = resultType.dyn_cast<FVectorType>()) {
      high = builder->create<SubindexOp>(op.high(), field.index());
      low = builder->create<SubindexOp>(op.low(), field.index());
    } else {
      op->emitError("Unknown aggregate type");
    }

    auto mux = builder->create<MuxPrimOp>(op.sel(), high, low);
    lowered.push_back(mux.getResult());
  }
  processUsers(op, lowered);
  opsToRemove.push_back(op);
}

void TypeLoweringVisitor::visitDecl(FExtModuleOp extModule) {
  OpBuilder builder(context);

  // Create an array of the result types and results names.
  SmallVector<Type, 8> inputTypes;
  SmallVector<NamedAttribute, 8> attributes;
  SmallVector<Attribute, 8> argAttrDicts;

  SmallVector<Attribute> portNames;
  SmallVector<Direction> portDirections;
  unsigned oldArgNumber = 0;
  SmallString<8> attrNameBuf;
  for (auto &port : extModule.getPorts()) {
    // Flatten the port type.
    SmallVector<FlatBundleFieldEntry, 8> fieldTypes;
    flattenType(port.type, fieldTypes);

    // Pre-populate argAttrs with the current arg attributes that are not
    // annotations.  Populate oldAnnotations with the current annotations.
    SmallVector<NamedAttribute> argAttrs;
    AnnotationSet oldAnnotations =
        AnnotationSet::forPort(extModule, oldArgNumber, argAttrs);

    // For each field, add record its name and type.
    for (auto field : fieldTypes) {
      Attribute pName;
      inputTypes.push_back(field.type);
      if (port.name)
        pName = builder.getStringAttr((port.getName() + field.suffix).str());
      else
        pName = builder.getStringAttr("");
      portNames.push_back(pName);
      // Flip the direction if the field is an output.
      portDirections.push_back((Direction)(
          (unsigned)getModulePortDirection(extModule, oldArgNumber) ^
          field.isOutput));

      // Populate newAnnotations with the old annotations filtered to those
      // associated with just this field.
      AnnotationSet newAnnotations =
          filterAnnotations(oldAnnotations, field.suffix);

      // Populate the new arg attributes.
      argAttrDicts.push_back(newAnnotations.getArgumentAttrDict(argAttrs));
    }
    ++oldArgNumber;
  }

  // Add port names attribute.
  attributes.push_back(
      {Identifier::get(mlir::function_like_impl::getArgDictAttrName(), context),
       builder.getArrayAttr(argAttrDicts)});
  attributes.push_back(
      {Identifier::get("portNames", context), builder.getArrayAttr(portNames)});
  attributes.push_back({Identifier::get(direction::attrKey, context),
                        direction::packAttribute(portDirections, context)});

  // Copy over any lingering attributes which are not "portNames", directions,
  // or argument attributes.
  for (auto a : extModule->getAttrs()) {
    if (a.first == "portNames" || a.first == direction::attrKey ||
        a.first == mlir::function_like_impl::getArgDictAttrName())
      continue;
    attributes.push_back(a);
  }

  // Set the attributes.
  extModule->setAttrs(builder.getDictionaryAttr(attributes));

  // Set the type and then bulk set all the names.
  extModule.setType(builder.getFunctionType(inputTypes, {}));
}

void TypeLoweringVisitor::visitDecl(FModuleOp module) {
  auto *body = module.getBodyBlock();

  ImplicitLocOpBuilder theBuilder(module.getLoc(), context);
  builder = &theBuilder;

  // Lower the operations.
  for (auto iop = body->rbegin(), iep = body->rend(); iop != iep; ++iop) {
    // We erase old ops eagerly so we don't have dangling uses we've already
    // lowered.
    for (auto *op : opsToRemove)
      op->erase();
    opsToRemove.clear();

    builder->setInsertionPoint(&*iop);
    builder->setLoc(iop->getLoc());
    dispatchVisitor(&*iop);
  }

  for (auto *op : opsToRemove)
    op->erase();
  opsToRemove.clear();

  // Lower the module block arguments.
  SmallVector<unsigned> argsToRemove;
  // First get all the info for existing ports
  SmallVector<ModulePortInfo> newArgs = module.getPorts();
  for (size_t argIndex = 0; argIndex < newArgs.size(); ++argIndex)
    if (lowerArg(module, argIndex, newArgs))
      argsToRemove.push_back(argIndex);
  // lowerArg might have invalidated any reference to newArgs, be careful

  // Remove block args that have been lowered.
  body->eraseArguments(argsToRemove);
  for (auto ii = argsToRemove.rbegin(), ee = argsToRemove.rend(); ii != ee;
       ++ii)
    newArgs.erase(newArgs.begin() + *ii);

  SmallVector<NamedAttribute, 8> newModuleAttrs;

  // Remember the original argument attributess.
  SmallVector<NamedAttribute, 8> originalArgAttrs;
  DictionaryAttr originalAttrs = module->getAttrDictionary();

  // Copy over any attributes that weren't original argument attributes.
  auto *argAttrBegin = originalArgAttrs.begin();
  auto *argAttrEnd = originalArgAttrs.end();
  for (auto attr : originalAttrs)
    if (std::lower_bound(argAttrBegin, argAttrEnd, attr) == argAttrEnd)
      // Drop old "portNames", directions, and argument attributes.  These are
      // handled differently below.
      if (attr.first != "portNames" && attr.first != direction::attrKey &&
          attr.first != mlir::function_like_impl::getArgDictAttrName())
        newModuleAttrs.push_back(attr);

  SmallVector<Attribute> newArgNames;
  SmallVector<Direction> newArgDirections;
  SmallVector<Attribute, 8> newArgAttrs;
  for (auto &port : newArgs) {
    newArgNames.push_back(port.name);
    newArgDirections.push_back(port.direction);
    newArgAttrs.push_back(port.annotations.getArgumentAttrDict());
  }
  newModuleAttrs.push_back(NamedAttribute(Identifier::get("portNames", context),
                                          builder->getArrayAttr(newArgNames)));
  newModuleAttrs.push_back(
      NamedAttribute(Identifier::get(direction::attrKey, context),
                     direction::packAttribute(newArgDirections, context)));

  // Attach new argument attributes.
  newModuleAttrs.push_back(NamedAttribute(
      builder->getIdentifier(mlir::function_like_impl::getArgDictAttrName()),
      builder->getArrayAttr(newArgAttrs)));

  // Update the module's attributes.
  module->setAttrs(newModuleAttrs);
  newModuleAttrs.clear();

  // Keep the module's type up-to-date.
  auto moduleType = builder->getFunctionType(body->getArgumentTypes(), {});
  module->setAttr(module.getTypeAttrName(), TypeAttr::get(moduleType));
}

/// Lower a wire op with a bundle to multiple non-bundled wires.
void TypeLoweringVisitor::visitDecl(WireOp op) {
  Value result = op.result();

  // Attempt to get the bundle types, potentially unwrapping an outer flip
  // type that wraps the whole bundle.
  FIRRTLType resultType = getCanonicalAggregateType(result.getType());

  // If the wire is not a bundle, there is nothing to do.
  if (!resultType)
    return;

  SmallVector<FlatBundleFieldEntry, 8> fieldTypes = peelType(resultType);
  SmallVector<Value> lowered;

  // Loop over the leaf aggregates.
  auto name = op.name().str();
  for (auto field : fieldTypes) {
    SmallString<16> loweredName;
    if (!name.empty())
      loweredName = (name + field.suffix).str();
    SmallVector<Attribute> loweredAttrs;
    // For all annotations on the parent op, filter them based on the target
    // attribute.
    filterAnnotations(op.annotations(), loweredAttrs, field.suffix);
    auto wire = builder->create<WireOp>(field.type, loweredName, loweredAttrs);
    lowered.push_back(wire.getResult());
  }
  processUsers(op, lowered);
  opsToRemove.push_back(op);
}

/// Lower a reg op with a bundle to multiple non-bundled regs.
void TypeLoweringVisitor::visitDecl(RegOp op) {
  Value result = op.result();

  // Attempt to get the bundle types, potentially unwrapping an outer flip
  // type that wraps the whole bundle.
  FIRRTLType resultType = getCanonicalAggregateType(result.getType());

  // If the wire is not a bundle, there is nothing to do.
  if (!resultType)
    return;

  SmallVector<FlatBundleFieldEntry, 8> fieldTypes = peelType(resultType);
  SmallVector<Value> lowered;

  // Loop over the leaf aggregates.
  auto name = op.name().str();
  for (auto field : fieldTypes) {
    SmallString<16> loweredName;
    if (!name.empty())
      loweredName = (name + field.suffix).str();
    SmallVector<Attribute> loweredAttrs;
    // For all annotations on the parent op, filter them based on the target
    // attribute.
    filterAnnotations(op.annotations(), loweredAttrs, field.suffix);
    auto reg = builder->create<RegOp>(field.getPortType(), op.clockVal(),
                                      loweredName, loweredAttrs);
    lowered.push_back(reg.getResult());
  }
  processUsers(op, lowered);
  opsToRemove.push_back(op);
}

void TypeLoweringVisitor::visitDecl(InstanceOp op) {
  SmallVector<Type, 8> resultTypes;
  SmallVector<int64_t, 8> numFieldsPerResult;
  SmallVector<StringAttr, 8> resultNames;
  bool skip = true;

  for (size_t i = 0, e = op.getNumResults(); i != e; ++i) {
    auto srcType = op.getType(i).cast<FIRRTLType>();

    if (!getCanonicalAggregateType(srcType)) {
      resultTypes.push_back(srcType);
      numFieldsPerResult.push_back(-1);
      continue;
    }
    skip = false;
    // Flatten any nested bundle types the usual way.
    SmallVector<FlatBundleFieldEntry, 8> fieldTypes = peelType(srcType);

    for (auto field : fieldTypes) {
      // Store the flat type for the new bundle type.
      resultTypes.push_back(field.getPortType());
    }
    numFieldsPerResult.push_back(fieldTypes.size());
  }
  if (skip)
    return;

  auto newInstance = builder->create<InstanceOp>(
      resultTypes, op.moduleNameAttr(), op.nameAttr(), op.annotations());
  size_t nextResult = 0;
  for (size_t aggIndex = 0, eAgg = numFieldsPerResult.size(); aggIndex != eAgg;
       ++aggIndex) {
    if (numFieldsPerResult[aggIndex] == -1) {
      op.getResult(aggIndex).replaceAllUsesWith(
          newInstance.getResult(nextResult++));
      continue;
    }
    SmallVector<Value> lowered;
    for (size_t fieldIndex = 0, eField = numFieldsPerResult[aggIndex];
         fieldIndex < eField; ++fieldIndex) {
      Value newResult = newInstance.getResult(nextResult++);
      lowered.push_back(newResult);
    }
    processUsers(op.getResult(aggIndex), lowered);
  }
  opsToRemove.push_back(op);
}

/// Lower a reg op with a bundle to multiple non-bundled regs.
void TypeLoweringVisitor::visitDecl(RegResetOp op) {
  Value result = op.result();

  // Attempt to get the bundle types, potentially unwrapping an outer flip
  // type that wraps the whole bundle.
  FIRRTLType resultType = getCanonicalAggregateType(result.getType());

  // If the wire is not a bundle, there is nothing to do.
  if (!resultType)
    return;

  SmallVector<FlatBundleFieldEntry, 8> fieldTypes = peelType(resultType);
  SmallVector<Value> lowered;

  // Loop over the leaf aggregates.
  auto name = op.name().str();
  for (auto field : llvm::enumerate(fieldTypes)) {
    SmallString<16> loweredName;
    if (!name.empty())
      loweredName = (name + field.value().suffix).str();
    SmallVector<Attribute> loweredAttrs;
    // For all annotations on the parent op, filter them based on the
    // target attribute.
    filterAnnotations(op.annotations(), loweredAttrs, field.value().suffix);
    Value resetVal;
    if (BundleType bundle = resultType.dyn_cast<BundleType>()) {
      resetVal = builder->create<SubfieldOp>(
          op.resetValue(), bundle.getElement(field.index()).name);
    } else if (FVectorType fvector = resultType.dyn_cast<FVectorType>()) {
      resetVal = builder->create<SubindexOp>(op.resetValue(), field.index());
    } else {
      op->emitError("Unknown aggregate type");
    }

    auto reg = builder->create<RegResetOp>(field.value().getPortType(),
                                           op.clockVal(), op.resetSignal(),
                                           resetVal, loweredName, loweredAttrs);
    lowered.push_back(reg.getResult());
  }
  processUsers(op, lowered);
  opsToRemove.push_back(op);
}

/// Lower a wire op with a bundle to multiple non-bundled wires.
void TypeLoweringVisitor::visitDecl(NodeOp op) {
  Value result = op.result();

  // Attempt to get the bundle types, potentially unwrapping an outer flip
  // type that wraps the whole bundle.
  FIRRTLType resultType = getCanonicalAggregateType(result.getType());

  // If the wire is not a bundle, there is nothing to do.
  if (!resultType)
    return;

  SmallVector<FlatBundleFieldEntry, 8> fieldTypes = peelType(resultType);
  SmallVector<Value> lowered;

  // Loop over the leaf aggregates.
  auto name = op.name().str();
  for (auto field : llvm::enumerate(fieldTypes)) {
    SmallString<16> loweredName;
    if (!name.empty())
      loweredName = (name + field.value().suffix).str();
    SmallVector<Attribute> loweredAttrs;
    // For all annotations on the parent op, filter them based on the target
    // attribute.
    filterAnnotations(op.annotations(), loweredAttrs, field.value().suffix);
    Value input;
    if (BundleType bundle = resultType.dyn_cast<BundleType>()) {
      input = builder->create<SubfieldOp>(
          op.input(), bundle.getElement(field.index()).name);
    } else if (FVectorType fvector = resultType.dyn_cast<FVectorType>()) {
      input = builder->create<SubindexOp>(op.input(), field.index());
    } else {
      op->emitError("Unknown aggregate type");
    }

    auto node = builder->create<NodeOp>(field.value().type, input, loweredName,
                                        loweredAttrs);
    lowered.push_back(node.getResult());
  }
  processUsers(op, lowered);
  opsToRemove.push_back(op);
}

/// Lower an InvalidValue op with a bundle to multiple non-bundled InvalidOps.
void TypeLoweringVisitor::visitExpr(InvalidValueOp op) {
  return;
  Value result = op.result();

  // Attempt to get the bundle types, potentially unwrapping an outer flip
  // type that wraps the whole bundle.
  FIRRTLType resultType = getCanonicalAggregateType(result.getType());

  // If the wire is not a bundle, there is nothing to do.
  if (!resultType)
    return;

  SmallVector<FlatBundleFieldEntry, 8> fieldTypes = peelType(resultType);
  SmallVector<Value> lowered;

  for (auto field : fieldTypes) {
    auto invalidVal = builder->create<InvalidValueOp>(field.type);
    lowered.push_back(invalidVal.getResult());
  }
  processUsers(op, lowered);
  opsToRemove.push_back(op);
}

void TypeLoweringVisitor::visitExpr(SubaccessOp op) {
  // Get the input bundle type.
  Value input = op.input();
  auto inputType = input.getType();
  if (auto flipType = inputType.dyn_cast<FlipType>())
    inputType = flipType.getElementType();

  auto selectWidth =
      op.index().getType().cast<FIRRTLType>().getBitWidthOrSentinel();

  // Reads.  All writes have been eliminated before now

  auto vType = inputType.cast<FVectorType>();
  Value mux = builder->create<InvalidValueOp>(vType.getElementType());

  for (size_t index = vType.getNumElements(); index > 0; --index) {
    auto cond = builder->create<EQPrimOp>(
        op.index(), builder->createOrFold<ConstantOp>(
                        UIntType::get(op.getContext(), selectWidth),
                        APInt(selectWidth, index - 1)));
    auto access = builder->create<SubindexOp>(input, index - 1);
    mux = builder->create<MuxPrimOp>(cond, access, mux);
  }
  op.replaceAllUsesWith(mux);
  opsToRemove.push_back(op);

  return;
}

//
//
//===----------------------------------------------------------------------===//
// Pass Infrastructure
//===----------------------------------------------------------------------===//

namespace {
struct LowerBundleVectorPass
    : public LowerBundleVectorBase<LowerBundleVectorPass> {
  void runOnOperation() override;

private:
  void runAsync();
  void runSync();
};
} // end anonymous namespace

void LowerBundleVectorPass::runSync() {
  auto circuit = getOperation();
  for (auto &op : circuit.getBody()->getOperations()) {
    TypeLoweringVisitor(&getContext()).lowerModule(&op);
  }
}

// This is the main entrypoint for the lowering pass.
void LowerBundleVectorPass::runOnOperation() { runSync(); }

/// This is the pass constructor.
std::unique_ptr<mlir::Pass> circt::firrtl::createLowerBundleVectorTypesPass() {
  return std::make_unique<LowerBundleVectorPass>();
}
