#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        NSLog(@"p's national id is %@", p.nationalID);
        
        // We cannot set it because of readonly for public
        //p.nationalID = @"1234";
        
        // We can set it through the method below
        [p assignNationalID:@"1234"];
        
        NSLog(@"p's national id is %@", p.nationalID);
    }
    
    return 0;
}
