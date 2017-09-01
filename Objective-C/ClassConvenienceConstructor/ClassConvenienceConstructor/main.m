#import <Foundation/Foundation.h>
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dog *dog = [[Dog alloc] init];
        Dog *puppy = [Dog dog];
        
        NSLog(@"dog is %@", dog);
        NSLog(@"puppy is %@", puppy);
    }
    
    return 0;
}
