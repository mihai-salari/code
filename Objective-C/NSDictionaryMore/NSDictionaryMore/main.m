#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *keys = [NSArray arrayWithObjects:@"a", @"b", @"c", nil];
        NSArray *values = [NSArray arrayWithObjects:@1, @2, @3, nil];
        
        NSLog(@"keys = %@", keys);
        NSLog(@"values = %@", values);
        
        NSDictionary *dict1 = [NSDictionary dictionaryWithObject:values forKey:keys];
        
        NSLog(@"dict1 = %@", dict1);
        NSLog(@"dict1 count = %lu", [dict1 count]); // Only one item!
        
        for (id key in dict1) {
            for (NSString *k in key) { // Two level deep
                NSLog(@"key is %@", k);
            }
        }
    }
    
    return 0;
}
