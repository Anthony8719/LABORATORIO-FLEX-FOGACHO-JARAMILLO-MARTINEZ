%{
#include <stdio.h> 
%}

%% 
pare printf("Comando recibido\n");
inicio printf("Comando inicio ejecutando\n");

%%
int main()
{
yylex();
return 0;
}
