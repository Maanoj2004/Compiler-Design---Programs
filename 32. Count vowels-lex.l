%{
int vow_count=0;
%}

%%

[aeiouAEIOU] {vow_count++;}

%%

int yywrap () {}

int main () {
    printf("Enter the string:");
    yylex ();
    printf("Vowels: %d\n", vow_count);
    return 0;
}
