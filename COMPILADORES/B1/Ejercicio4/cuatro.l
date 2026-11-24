%{
	#include<stdlib.h>
	#include<stdio.h>
%}
%%
[+|-]?[0-9]+(\.[0-9]+)?([E|e][+|-]?[0-9]+)? printf("Número real o exponencial \n");
[a-zA-z][a-zA-z0-9]*    printf("Identificador \n");
[ \t\n]+                { /* Ignora espacios y saltos */ }
.                       { /* Ignora otros caracteres */ }
%%
int main()
{
	yylex();
	return 0;
}
