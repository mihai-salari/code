#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *array = [NSArray array];
        
        @try {
            [array objectAtIndex:9];
        }
        
        @catch (NSException *exception) {
            NSLog(@"%@ %@", exception.name, exception.reason);
        }
        
        NSLog(@"Execution continues");
    }
    
    return 0;
}
