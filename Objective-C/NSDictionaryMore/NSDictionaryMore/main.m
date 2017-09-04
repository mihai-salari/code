#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *keys = [NSArray arrayWithObjects:@"a", @"b", @"c", nil];
        NSArray *values = [NSArray arrayWithObjects:@1, @2, @3, nil];
        
        NSLog(@"keys = %@", keys);
        NSLog(@"values = %@", values);
        
    }
    
    return 0;
}
