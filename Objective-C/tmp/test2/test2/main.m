#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double a = 3.31e-8;
        double b = 2.01e-7;
        double c = 7.16e-6;
        double d = 2.01e-8;
        
        double result = (a + b) / (c + d);
        
        NSLog(@"result = %5.1e", result);
    }
    
    return 0;
}
