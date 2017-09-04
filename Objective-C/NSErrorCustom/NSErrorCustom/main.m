#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *foo = [Person new];
        NSError *error;
        
        //foo = nil;
        
        if ([Person printPersonInfo:foo error:&error] == NO) {
            NSLog(@"Something wrong...");
            NSLog(@"Error: %@", [error localizedDescription]);
            NSLog(@"Error: %@", [error localizedRecoverySuggestion]);
            NSLog(@"Error: %@", [error userInfo]);
        } else {
            NSLog(@"Nothing wrong...");
        }                
    }
    
    return 0;
}
