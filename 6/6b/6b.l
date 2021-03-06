%{
#include <stdio.h>
#include "y.tab.h"
extern yylval;
%}

%%
[ \t];
[+|-|*|/|=|<|>] {printf("Operator : %s\n",yytext);return OP;}
[0-9]+ {yylval = atoi(yytext); printf("Numbers : %d\n",yylval); return DIGIT;} 
int|char|bool|float|void|for|do|while|if|else|return|void {printf("Keyword : %s\n",yytext);return KEY;}
[a-zA-Z0-9]+ {printf("Identifier : %s\n",yytext);return ID;}
. ;
%%
