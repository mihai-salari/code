#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *array = [NSMutableArray array];
        
        [array addObject:@"one"];
        [array addObject:@"two"];
        [array addObject:@"three"];
        [array addObject:[NSNull null]];
        [array addObject:@"five"];
        
        NSLog(@"%@", array);
        
        if ([array objectAtIndex:3] == [NSNull null]) {
            NSLog(@"It is empty");
        }
    }
    
    return 0;
}
