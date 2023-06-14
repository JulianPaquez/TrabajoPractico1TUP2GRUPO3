#include <stdio.h>


 int main()
 {
    int i;
    i=0;
    printf("numeros del 1 a 100\n",i);
        scanf("%i", &i);
    while (i<=100 && i>0){
        printf("numeros del 1 a 100\n",i);
        scanf("%i", &i);
    }
    printf("fin del bucle\n");
 }   
