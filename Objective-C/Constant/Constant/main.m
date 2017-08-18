#import <Foundation/Foundation.h>

#define MYMAX(A, B) ((A) > (B) ? (A) : (B)) // macro

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        const int maximumAge = 100;
        
        NSLog(@"maximumAge = %i", maximumAge);
        
        NSLog(@"\u03c0 is %f", M_PI);
        
        NSLog(@"%d is larger", MYMAX(10, 12));
    }
    
    return 0;
}
