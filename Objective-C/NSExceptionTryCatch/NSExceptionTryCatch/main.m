#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        @try {
            NSLog(@"Trying to add nil to an array...");
            NSMutableArray *array = [NSMutableArray array];
            [array addObject:nil];
        }
        
        @catch (NSException *e) {
            NSLog(@"Caught exception: %@, Reason: %@", [e name], [e reason]);
        }
        
        @finally {
            NSLog(@"Executed whether an exception was thrown or not.");
        }
    }
    
    return 0;
}
