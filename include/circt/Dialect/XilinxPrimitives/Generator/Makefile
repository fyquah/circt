.PHONY: all

all:
	flex -o lex.y.cc lexer.ll
	bison -d parser.yy
	g++ -std=c++17 lex.y.cc parser.tab.cc ast.cpp
