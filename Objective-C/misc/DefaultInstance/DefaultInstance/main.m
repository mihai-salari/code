#import <Foundation/Foundation.h>
#import "Person.h"

// To check that all instance variables are initialized to 0 or null

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        
        NSLog(@"%@ %d", p.name, p.age);
        
        NSLog(@"%f %f", [p weight], [p height]);
        
    }
    
    return 0;
}
