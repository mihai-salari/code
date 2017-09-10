#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a = 0b0001;
        int b = 0b0010;
        
        printf("a is %d\n", a);
        printf("b is %d\n", b);
        
        printf("a & b is %d\n", a & b);
        printf("a | b is %d\n", a | b);
    }
    
    return 0;
}
