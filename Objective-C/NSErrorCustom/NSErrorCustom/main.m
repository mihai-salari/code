#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *foo = [Person new];
        NSError *error;
        
        [Person printPersonInfo:foo error:&error];
    }
    
    return 0;
}
