#include <stdio.h>
#include <objc/objc.h> // for BOOL

int main(int argc, const char * argv[]) {
    int age = 37;
    
    BOOL isAdult = (age >= 21);
    
    if (isAdult) {
        printf("Cool, you are adult!\n");
    } else {
        printf("No way!\n");
    }
        
    return 0;
}
