#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        SEL selPrintName = @selector(printName);
                
        Person *p = [Person new];
        p.name = @"Foo";
        
        if ([p respondsToSelector:selPrintName]) {
            [p printName];
        } else {
            NSLog(@"unknown selector");
        }
    }
    
    return 0;
}
