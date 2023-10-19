%{
%}

DIGIT [0-9]
YEAR {DIGIT}{4}
MONTH (0[1-9]|1[0-2])
DAY (0[1-9]|[12][0-9]|3[01])

%%
{DAY}-{MONTH}-{YEAR}    { printf("Valid date of birth: %s\n", yytext); }
.                       { printf("Invalid date of birth: "); }
%%

int yywrap(){}

int main() {
    printf("\nEnter the D.O.B: ");
    yylex();
}
