#include <stdio.h>
#include <string.h>

#define Max 100

int main()
{
    char a[Max];
    printf("Enter the string: ");
    scanf("%99[^\n]", a);

    int n = strlen(a);

    if (n >= 4) 
    {
        if(a[0]=='/' && a[1]=='*' && a[n-2]=='*' && a[n-1]=='/')
        {
            printf("Its a Multiple line comment.");
        }
        else if(a[0]=='/' && a[1]=='/')
        {
            printf("Its a single line commment.");
        }
        else{
            printf("Its a regular expression.");
        }
    }

    return 0;
}
