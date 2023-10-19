%{
#include<stdio.h>
int n=0;
%}

%%
"/""*"[a-zA-Z0-9 \n\t]+"*""/" {n++;}
"//"[a-zA-Z0-9 \n\t]+ {n++;}
%%
int yywrap()
{}
int main()
{
yyin=fopen("input.c","r");
yylex();
printf("\n------------------------");
printf("\nNo. of comment lines: %d",n);
printf("\n------------------------");
}
