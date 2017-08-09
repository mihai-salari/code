#import <Foundation/Foundation.h>

#define MYMAX(A, B) ((A) > (B) ? (A) : (B)) // macro

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"%d is larger", MYMAX(10, 12));
    }
    
    return 0;
}
