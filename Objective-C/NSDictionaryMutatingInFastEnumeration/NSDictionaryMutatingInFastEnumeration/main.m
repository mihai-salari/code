#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"Foo", @"firstName", @"Bar", @"lastName", @40, @"age", @"foo.bar@example.com", @"email", nil];
        
        // If you enumerate over a data structure by using fast enumeration or
        // an NSEnumerator, your code shouldn't modify the associated data
        // structure until your enumeration is completed. If you need to enumerate
        // through a dictionary and potentially add or remove entries before
        // enumeration has completed, you should first make a copy of all the keys
        // and then enumerate through the snapshot while modifying the original
        // dictionary as below.
        NSArray *dictKeys = [dict allKeys];
        
        for (NSString *key in dictKeys) {
            if ([key isEqualToString:@"email"]) {
                [dict removeObjectForKey:key];
            }
        }
        
        NSLog(@"%@", dict);
    }
    
    return 0;
}
