#include <stdio.h>

enum Case {
    A,
    B,
    C
};

int main(int argc, const char * argv[]) {
    enum Case myCase = A;
    
    printf("myCase = %d\n", myCase);
    
    myCase = 100;
    
    switch (myCase) {
        case 0:
            printf("A");
            //break;
        case 1:
            printf("B");
            //break;
        case 2:
            printf("C");
            break;
        default:
            printf("Invalid case");
    }
    
    printf("\n");
    
    return 0;
}
