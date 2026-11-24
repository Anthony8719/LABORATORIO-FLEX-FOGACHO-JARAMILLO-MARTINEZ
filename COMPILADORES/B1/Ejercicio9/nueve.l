%{
#include <stdlib.h>
#include <stdio.h>

int cont_digitos[10] = {0};
%}

%%

[0-9]	{ cont_digitos[yytext[0] - '0']++; }
.|\n	{ /* Ignora el resto de caracteres */ }

%%

int main()
{
	yylex();
	printf("\n+--------+------------+\n");
	printf("| Digito | Cantidad  |\n");
	printf("+--------+-----------+\n");
	for (int i = 0; i < 10; i++) {
		printf("|  %d  |  %10d  |\n", i, cont_digitos[i]);
	}
	printf("+-------+-----------+\n");
	return 0;
}
