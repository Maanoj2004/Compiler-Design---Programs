%{
int pos=0,neg=0;
%}

%%

[-][0-9]+ {neg++;}
[0-9]+ {pos++;}

%%

int yywrap(){}

int main()
{
printf("Enter the terms: ");
yylex();
printf("Number of positive terms: %d\nNumber of negative terms: %d",pos,neg);
}

