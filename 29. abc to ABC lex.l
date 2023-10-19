%{
#include <ctype.h>
%}

%%
[a-z] { printf("%c", toupper(yytext[0])); }
.|\n { printf("%c", yytext[0]); }
%%

int yywrap(){}

int main() {
    printf("Enter the string: ");
    yylex();
}
