
%option noyywrap

%{
#include <stdio.h>
%}

%%

"if"        { printf("RESERVADA: %s\n", yytext); }
"else"      { printf("RESERVADA: %s\n", yytext); }
"while"     { printf("RESERVADA: %s\n", yytext); }
"int"       { printf("RESERVADA: %s\n", yytext); }

[a-zA-Z_][a-zA-Z0-9_]* {
    printf("IDENTIFICADOR: %s\n", yytext);
}

[0-9]+ {
    printf("ENTERO: %s\n", yytext);
}

[ \t\n\r]+  { /* Ignorar espacios */ }

. {
    printf("NO RECONOCIDO: %s\n", yytext);
}

%%

int main(void) {
    printf("Ingrese el codigo a analizar:\n");

    yylex();

    return 0;
}
