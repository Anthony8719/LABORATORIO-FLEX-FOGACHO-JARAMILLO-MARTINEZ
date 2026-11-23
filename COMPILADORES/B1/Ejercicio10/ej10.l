%{
#include <stdio.h>
%}

%option noyywrap

USUARIO     [a-zA-Z0-9._-]+
DOMINIO     [a-zA-Z0-9.-]+
EXTENSION   [a-zA-Z]{2,6}

%%

{USUARIO}@{DOMINIO}\.{EXTENSION}    {
                                        printf("TOKEN VALIDO (Correo): %s\n", yytext);
                                    }

[ \t\n]+                            { /* Ignorar espacios y saltos de línea */ }
[^ \t\n]+                           { printf("Token no reconocido:   %s\n", yytext); }

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
