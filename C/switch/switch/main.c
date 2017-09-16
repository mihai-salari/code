#include <stdio.h>

enum Case {
    A,
    B,
    C
};

int main(int argc, const char * argv[]) {
    enum Case myCase = A;
    
    printf("myCase = %d\n", myCase);
    
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
            break;
    }
    
    printf("\n");
    
    return 0;
}
