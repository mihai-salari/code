#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Objective-C array cannot hold C primitive type such as Int, Float
        // it can hold only objects
        NSMutableArray *list = [[NSMutableArray alloc] init];
        [list addObject:@4];
        [list addObject:@1.2];
        
        NSLog(@"%@", list);
    }
    
    return 0;
}
