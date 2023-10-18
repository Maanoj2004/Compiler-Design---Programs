%{
int ln=0;
%}

%%

.* {ln++;fprintf(yyout,"%d. %s",ln,yytext);}

%%

int yywrap(){}

int main()
{
yyin=fopen("sample.txt","r");
yyout=fopen("out.txt","w");
yylex();
}
