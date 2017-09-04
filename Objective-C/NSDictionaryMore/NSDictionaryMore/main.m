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

/*

 2017-09-05 04:36:54.689678+0800 NSDictionaryMore[83108:5031637] keys = (
 a,
 b,
 c
 )
 2017-09-05 04:36:54.690182+0800 NSDictionaryMore[83108:5031637] values = (
 1,
 2,
 3
 )
 2017-09-05 04:36:54.690342+0800 NSDictionaryMore[83108:5031637] dict1 = {
 (
 a,
 b,
 c
 ) =     (
 1,
 2,
 3
 );
 }
 2017-09-05 04:36:54.690367+0800 NSDictionaryMore[83108:5031637] dict1 count = 1
 2017-09-05 04:36:54.690430+0800 NSDictionaryMore[83108:5031637] key is a
 2017-09-05 04:36:54.690449+0800 NSDictionaryMore[83108:5031637] key is b
 2017-09-05 04:36:54.690461+0800 NSDictionaryMore[83108:5031637] key is c
 Program ended with exit code: 0

*/
