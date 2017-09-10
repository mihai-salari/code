#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a = 0b0001;
        int b = 0b0010;
        
        printf("a is %d\n", a);
        printf("b is %d\n", b);
        
        printf("a AND b is %d\n", a & b);
        printf("a OR b is %d\n", a | b);
        printf("a XOR b is %d\n", a ^ b);
        
        printf("~a is %d\n", ~a);
        printf("~b is %d\n", ~b);
    }
    
    return 0;
}
