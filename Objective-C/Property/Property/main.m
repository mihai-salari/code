#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *car = [Car new];
        [car setHybrid:YES];
        
        if ([car isHybrid]) {
            NSLog(@"It is a hybrid car");
        }
    }
    
    return 0;
}
