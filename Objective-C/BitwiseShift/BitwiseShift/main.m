#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        unsigned int a = 1;
        
        printf("a << 1 is %d\n", a << 1);
        printf("a >> 1 is %d\n", a >> 1);
    }
    
    return 0;
}
