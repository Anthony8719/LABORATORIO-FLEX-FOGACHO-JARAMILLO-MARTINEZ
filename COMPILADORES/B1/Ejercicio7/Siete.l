
%option noyywrap

%{
#include <stdio.h>
%}

%%

"+"     { printf("ARITMETICO - SUMA: %s\n", yytext); }
"-"     { printf("ARITMETICO - RESTA: %s\n", yytext); }
"*"     { printf("ARITMETICO - MULTIPLICACION: %s\n", yytext); }
"/"     { printf("ARITMETICO - DIVISION: %s\n", yytext); }

"<="    { printf("RELACIONAL - MENOR IGUAL: %s\n", yytext); }
">="    { printf("RELACIONAL - MAYOR IGUAL: %s\n", yytext); }
"=="    { printf("RELACIONAL - IGUALDAD: %s\n", yytext); }
"!="    { printf("RELACIONAL - DIFERENTE: %s\n", yytext); }
"<"     { printf("RELACIONAL - MENOR: %s\n", yytext); }
">"     { printf("RELACIONAL - MAYOR: %s\n", yytext); }

[ \t\n\r]+  { /* Ignorar espacios */ }

.           { /* Ignorar otros caracteres */ }

%%

int main(void) {
    printf("Ingrese las operaciones a analizar:\n");

    yylex();

    return 0;
}
