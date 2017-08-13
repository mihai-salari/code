#import <Foundation/Foundation.h>
#import "Parser.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Parser *p = [[Parser alloc] init];
        
        [p testReadonlyElement];
        NSLog(@"%@", p.element);
    }
    
    return 0;
}
