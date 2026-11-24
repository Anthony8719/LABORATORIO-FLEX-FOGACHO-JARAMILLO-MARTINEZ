%{
#include <stdlib.h>
#include <stdio.h>
%}

%%

[a-zA-Z_][a-zA-Z0-9_]* { printf("IDENTIFICADOR: %s\n", yytext); }
[0-9]+			{ printf("NUMERO ENTERO: %s\n", yytext); }
,			{ printf("SEPARADOR (COMA)\n"); }
[ \t\n]+		{ /* Ignora espacios, tabulaciones y saltos de linea */ }
.			{ printf("ERROR: caracter no valido -> %s\n", yytext); }

%%

int main()
{
	yylex();
	return 0;
} 
