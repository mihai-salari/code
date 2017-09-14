#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    // while loop
    
    int i = 0;
    
    while (i < 12) {
        printf("%d: Foo is cool\n", i);
        i++;
    }
    
    // for loop
    
    for (int j = 0; j < 12; j++) {
        printf("%d: Bar is cool\n", j);
    }
    
    // continue and break
    
    for (int j = 0; j < 12; j++) {
        
        // No need to check for multiples of 3
        if (j % 3 == 0) {
            continue;
        }
        
        printf("Checking j = %d\n", j);
        
        if (j + 90 == j * j) {
            printf("The answer is %d\n", j);
            
            break;
        }
    }
    
    // do-while loop
    
    int k = 0;
    
    do {
        printf("%d: Matty is cool\n", k);
        k++;
    } while (k < 12);
    
    return 0;
}
