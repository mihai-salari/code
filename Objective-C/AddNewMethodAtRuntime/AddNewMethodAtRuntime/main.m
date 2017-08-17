#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        id p = [Person new];
        
        [p performSelector:@selector(aSimpleDynamicMethod)];
        [p performSelector:@selector(aSimpleDynamicMethod)];
        [p performSelector:@selector(aSimpleDynamicMethod)];
    }
    
    return 0;
}
