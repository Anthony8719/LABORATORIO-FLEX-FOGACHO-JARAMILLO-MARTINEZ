%{
#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
%}

%%

[A-Z]	{ printf("%c", tolower(yytext[0])); }
.|\n	{ printf("%c", yytext[0]); }

%%

int main()
{
	yylex();
	return 0;
}
