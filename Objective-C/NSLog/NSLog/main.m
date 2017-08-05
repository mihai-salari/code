#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a = 94;
        int b = 123;
        
        NSLog(@"Numbers:\nA: %10d\nB: %10d", a, b);
        NSLog(@"Numbers:\nA: %-10d\nB: %-10d", a, b);
        NSLog(@"Numbers:\nA: %010d\nB: %010d", a, b);
    }
    
    return 0;
}
