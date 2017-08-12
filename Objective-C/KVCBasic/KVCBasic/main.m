#import <Foundation/Foundation.h>
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dog *dog = [[Dog alloc] init];
        
        [dog setValue:@42 forKey:@"number"];        
        NSLog(@"Number of dog is: %@", [dog valueForKey:@"number"]);
    }
    
    return 0;
}
