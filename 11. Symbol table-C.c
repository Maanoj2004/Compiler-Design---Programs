#include <stdio.h>
#include <math.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>
void main()
{
    int x = 0, n, i = 0, j = 0;
    void *mypointer, *address[5];
    char ch, search,array2[15], array3[15], c;
    printf("Input the expression ending with $ sign: ");
    while ((c = getchar()) != '$')
    {
        array2[i] = c;
        i++;
    }
    n = i - 1;
    printf("Given Expression: ");
    i = 0;
    while (i <= n)
    {
        printf("%c", array2[i]);
        i++;
    }
    printf("\n------------------------------------");
    printf("\n     Symbol Table display\n");
    printf("------------------------------------");
    printf("\nSymbol \t  Addr \t          Type");
    printf("\n------------------------------------");
    while (j <= n)
    {
        c = array2[j];
        if (isalpha(toascii(c)))
        {
            mypointer = malloc(c);
            address[x] = mypointer;
            array3[x] = c;
            printf("\n%c \t %d \t identifier\n", c, mypointer);
            x++;
            j++;
        }
        else
        {
            ch = c;
            if (ch == '+' || ch == '-' || ch == '*' || ch == '=')
            {
                mypointer = malloc(ch);
                address[x] = mypointer;
                array3[x] = ch;
                printf("\n%c \t %d \t operator\n", ch, mypointer);
                x++;
                j++;
            }
        }
    }
}
