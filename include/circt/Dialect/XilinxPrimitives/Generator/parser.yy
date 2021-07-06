%require "3.2"
%language "c++"
%locations

%define api.token.constructor
%define api.value.type variant

%code requires {
  #include <iostream>

  #include "ast.h"
}

%code top {
  #include "parser.tab.hh"

  extern yy::parser::symbol_type yylex();

  static std::vector<VerilogModule> parser_result;
}

%token MODULE;
%token ENDMODULE;
%token INPUT;
%token OUTPUT;
%token REG;
%token INOUT;
%token PARAMETER;
%token INTEGER;
%token REAL;
%token <BitvectorLiteral> BITVECTOR_LITERAL;
%token <std::string> STRING_LITERAL;
%token <std::string> FLOAT_LITERAL;
%token <int64_t> INTEGER_LITERAL;
%token <std::string> IDENTIFIER;
%token UNKNOWN;

%start verilog

%%

%nterm <std::vector<std::string>> comma_separated_identifiers;
comma_separated_identifiers
  : IDENTIFIER                                    { $$ = { $1 }; }
  | comma_separated_identifiers ',' IDENTIFIER    { $$ = std::move($1); $$.push_back($3); }

%nterm <AttributeValue> attribute_value;
attribute_value
  : INTEGER_LITERAL { $$ = $1; }
  | STRING_LITERAL  { $$ = std::move($1); }
  
%nterm <OptionalAttribute> optional_attribute;
optional_attribute
  : '(' '*' IDENTIFIER '=' attribute_value '*' ')'
      { $$ = std::make_optional<Attribute>({$3, $5}); }
  | %empty
      { $$ = {}; }

%nterm <std::vector<Parameter>> optional_parameters;
optional_parameters
  : '#' '(' comma_separated_parameter_decalarations ')'
      { $$ = std::move($3); }
  | %empty
      { $$ = {}; }

%nterm <std::optional<PortDeclaration>> top_level_arg;
top_level_arg
  : INPUT IDENTIFIER 
      { $$ = {{ Direction::INPUT, {}, {std::move($2)} }}; }
  | OUTPUT IDENTIFIER
      { $$ = {{ Direction::OUTPUT, {}, {std::move($2)} }}; }
  | INOUT IDENTIFIER
      { $$ = {{ Direction::INOUT, {}, {std::move($2)} }}; }
  | INPUT '[' INTEGER_LITERAL ':' INTEGER_LITERAL ']' IDENTIFIER 
      { $$ = {{ Direction::INPUT, {{$3, $5}}, {std::move($7)} }}; }
  | OUTPUT '[' INTEGER_LITERAL ':' INTEGER_LITERAL ']' IDENTIFIER
      { $$ = {{ Direction::OUTPUT, {{$3, $5}}, {std::move($7)} }}; }
  | INOUT '[' INTEGER_LITERAL ':' INTEGER_LITERAL ']' IDENTIFIER 
      { $$ = {{ Direction::INOUT, {{$3, $5}}, {std::move($7)} }}; }
  | IDENTIFIER 
      { $$ = {}; }

%nterm <std::vector<PortDeclaration>> comma_separated_top_level_args;
comma_separated_top_level_args
  : top_level_arg 
      { if($1) { $$ = { std::move(*$1) }; }
        else   { $$ = {}; }
      }
  | comma_separated_top_level_args ',' top_level_arg
      { $$ = std::move($1);
        if($3) {
          $$.push_back(std::move(*$3));
        }
      }
  | %empty
      { $$ = { }; }

%nterm <ModuleHeader> module_header;
module_header
  : optional_attribute MODULE IDENTIFIER optional_parameters '(' comma_separated_top_level_args ')' ';'
      { $$ = { std::move($3), std::move($4), std::move($6) }; }

%nterm <std::optional<Indices>> optional_indices;
optional_indices
  : '[' INTEGER_LITERAL ':' INTEGER_LITERAL ']'
      { $$ = {{$2, $4}}; }
  | %empty
      { $$ = {}; }

%nterm <ParameterValue> parameter_value;
parameter_value
  : STRING_LITERAL  { $$ = $1; }
  | INTEGER_LITERAL { $$ = $1; } 

%nterm <std::pair<std::string, ParameterValue>> parameter_declaration;
parameter_declaration
  : PARAMETER optional_indices IDENTIFIER '=' parameter_value
      { $$ = { $3, $5 }; }
  | PARAMETER optional_indices INTEGER IDENTIFIER '=' INTEGER_LITERAL
      { $$ = { $4, $6 }; }
  | PARAMETER optional_indices REAL IDENTIFIER '=' FLOAT_LITERAL
      { $$ = { $4, $6 }; }
  | PARAMETER optional_indices IDENTIFIER '=' BITVECTOR_LITERAL
      { $$ = { $3, $5 }; }

%nterm <std::vector<Parameter>> comma_separated_parameter_decalarations;
comma_separated_parameter_decalarations
  : parameter_declaration
      { $$ = { $1 }; }
  | comma_separated_parameter_decalarations ',' parameter_declaration
      { $$ = std::move($1);
        $$.push_back(std::move($3));
      }

optional_reg
  : %empty
  | REG

%nterm <PortDeclaration> port_declaration;
port_declaration
  : INPUT comma_separated_identifiers
      { $$ = { Direction::INPUT, {}, std::move($2) }; };
  | OUTPUT optional_reg comma_separated_identifiers
      { $$ = { Direction::OUTPUT, {}, std::move($3) }; };
  | INOUT comma_separated_identifiers
      { $$ = { Direction::INOUT, {}, std::move($2) }; };
  | INPUT '[' INTEGER_LITERAL ':' INTEGER_LITERAL ']' comma_separated_identifiers
      { $$ = { Direction::INPUT, {{$3, $5}}, std::move($7) }; };
  | OUTPUT optional_reg '[' INTEGER_LITERAL ':' INTEGER_LITERAL ']' comma_separated_identifiers
      { $$ = { Direction::OUTPUT, {{$4, $6}}, std::move($8) }; };
  | INOUT '[' INTEGER_LITERAL ':' INTEGER_LITERAL ']' comma_separated_identifiers
      { $$ = { Direction::INOUT, {{$3, $5}}, std::move($7) }; };

%nterm <std::pair<std::vector<PortDeclaration>, std::vector<Parameter>>> port_and_parameter_declarations;
port_and_parameter_declarations
  : %empty
      { $$ = {}; }
  | port_and_parameter_declarations port_declaration ';'
      { $$ = std::move($1); $$.first.push_back(std::move($2)); } 
  | port_and_parameter_declarations parameter_declaration ';' 
      { $$ = std::move($1); $$.second.push_back(std::move($2)); } 

%nterm <VerilogModule> verilog_module;
verilog_module
  : module_header port_and_parameter_declarations  ENDMODULE
      { $$ = { std::move($1), std::move($2.second), std::move($2.first) }; }

%nterm <std::vector<VerilogModule>> verilog_modules;
verilog_modules
  : %empty                 { $$ = {}; }
  | verilog_modules verilog_module { $$ = std::move($1); $$.push_back(std::move($2)); }

verilog: verilog_modules { parser_result = std::move($1); }

%% 

extern int yylineno;

void yy::parser::error(const location_type& location, const std::string &err_message) {
  std::cerr << "Wabaladupdup: " << location << ": " << yylineno << err_message << std::endl;
}

int main()
{
  yy::parser parser;
  parser.parse();
  transformAstToMLIRTd(parser_result);
}
