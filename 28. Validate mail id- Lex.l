%{
%}

%%

[a-z.0-9]+@[a-z]+(.com|.in) {printf("Its a valid email id.");}
.+ {printf("Its not a valid email id.");}

%%

int yywrap()
{}

int main()
{
printf("Enter the email id: ");
yylex();
}
