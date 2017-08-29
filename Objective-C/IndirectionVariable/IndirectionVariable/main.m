#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int count = 10;
        
        NSLog(@"The numbers from 1 to %d:", count);
        
        for (int i = 1; i <= count; i++) {
            NSLog(@"i is %d", i);
        }
    }
    
    return 0;
}
