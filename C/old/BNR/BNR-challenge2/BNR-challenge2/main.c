#include <stdio.h>
#include <stdlib.h> // atoi
#include <readline/readline.h>

int main(int argc, const char * argv[]) {
    
    printf("Where should I start counting? ");
    const char *number = readline(NULL);
    
    for (int n = atoi(number); n >= 0; n--) {
        if (n % 3 == 0) {
            printf("%d\n", n);
            
            if (n % 5 == 0 && n != 0) {
                printf("Found one!\n");
            }
        }
    }
    
    return 0;
}
