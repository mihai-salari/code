#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char c, d;
        c = 'd';
        d = c;
        
        printf("d is %c\n", d);
    }
    
    return 0;
}
