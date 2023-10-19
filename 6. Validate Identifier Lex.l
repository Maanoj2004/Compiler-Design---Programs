%{
%}

%%

[6-9][0-9]{9} {printf("\n It is valid Mobile number.\n");}
.+ {printf("\n It is a invalid mobile number.\n");}

%%

int yywrap()
{}

int main()
{
printf("\nEnter the mobile number: ");
yylex();
}
