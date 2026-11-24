%{
#include <stdio.h>
#include <stdlib.h>
%}

%option noyywrap

%%

[01]+   {
            long decimal = strtol(yytext, NULL, 2);
            printf("Binario: %-15s  Decimal: %ld\n", yytext, decimal);
        }

[ \t\n]+    { /* Ignorar espacios y saltos de línea */ }
.           { printf("Token no valido: %s\n", yytext); }

%%

int main(int argc, char *argv[]) {
    if (argc > 1) {
        FILE *archivo = fopen(argv[1], "r");
        if (!archivo) {
            perror("Error al abrir el archivo");
            return 1;
        }
        yyin = archivo;
    }
    yylex();
    return 0;
}
