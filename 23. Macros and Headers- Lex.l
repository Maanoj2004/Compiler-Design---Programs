%{
int nmacro, nheader; 
%}
%%
"#define" {nmacro++;} 
"#include" {nheader++;} 
.|\n { }
%%
int yywrap() 
{ 
return 1; 
} 
int main() 
{ 
yyin=fopen("sample4.c","r");
yylex(); 
printf("Number of macros defined = %d \nNumber of header files included = %d\n",nmacro,nheader); 
}
