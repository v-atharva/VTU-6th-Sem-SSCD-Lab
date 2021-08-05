%{
#include<stdio.h>
int sl=0;
int ml=0;
%}
%%
"/*"[a-zA-Z0-9' '\t\n]+"*/"	ml++;
"//".*	sl++;
%%
int main()
{
	yyin=fopen("f1.c","r");
	yyout=fopen("f2.c","w");
	yylex();
	fclose(yyin);
	fclose(yyout);
	printf("\nNumber of single line comments are = %d",sl); 
	printf("\nNumber of multi-line comments are = %d\n",ml);
	printf("\n\n");
	return 0;
}