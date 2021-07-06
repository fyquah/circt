%{

#include <iostream>
#include <string>
#include <variant>

/* See https://stackoverflow.com/questions/34570823/make-yylex-return-symbol-type-instead-of-int */
#define YY_DECL yy::parser::symbol_type yylex()

#define yyterminate() return yy::parser::symbol_type(YY_NULL, yy::location())

#include "parser.tab.hh"

%}

%option nodefault
%option noyywrap
%option yylineno
/* %option c++ */
/* %option yyclass="Scanner" */
/* %option prefix="EzAquarii_" */

%%

module {
    return yy::parser::make_MODULE(yy::location());
}

endmodule {
    return yy::parser::make_ENDMODULE(yy::location());
}

input {
    return yy::parser::make_INPUT(yy::location());
}

reg {
    return yy::parser::make_REG(yy::location());
}

output {
    return yy::parser::make_OUTPUT(yy::location());
}

inout {
    return yy::parser::make_INOUT(yy::location());
}

parameter {
    return yy::parser::make_PARAMETER(yy::location());
}

real {
    return yy::parser::make_REAL(yy::location());
}

integer {
    return yy::parser::make_INTEGER(yy::location());
}


[0-9]+\'[hbod][0-9ABCDEF]+ {
    return yy::parser::make_BITVECTOR_LITERAL(BitvectorLiteral::parse(yytext), yy::location());
}

[a-zA-Z_][a-zA-Z_0-9]* {
    return yy::parser::make_IDENTIFIER(yytext, yy::location());
}

[0-9]+\.[0-9]+ {
    return yy::parser::make_FLOAT_LITERAL(yytext, yy::location());
}

[0-9]+ {
    return yy::parser::make_INTEGER_LITERAL(atol(yytext), yy::location());
}



\"[^"]*\" {
    return yy::parser::make_STRING_LITERAL(yytext, yy::location());
}

[(){}\[\],;*=:#]  { return yy::parser::symbol_type(yytext[0], yy::location()); }


[ \n\t]+

\/\/[^\n]*\n

. { std::cerr << "Encountered an unknown token" << std::endl; return yy::parser::make_UNKNOWN(yy::location()); }


%%
