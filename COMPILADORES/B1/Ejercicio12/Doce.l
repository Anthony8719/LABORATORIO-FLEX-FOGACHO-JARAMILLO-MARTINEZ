%{
#include <stdio.h>
#include <stdlib.h>
%}

%option noyywrap

%%

0[xX][0-9a-fA-F]+   {
                        long decimal = strtol(yytext, NULL, 16);
                        printf("Hexadecimal: %-12s  Decimal: %ld\n", yytext, decimal);
                    }

[ \t\r\n]+            { /* Ignorar espacios y saltos de línea */ }
.                   { printf("Token no valido: %s\n", yytext); }

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
