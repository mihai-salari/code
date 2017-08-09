#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary *emptyDict = [NSDictionary dictionary]; // create empty dict
        NSLog(@"%@", emptyDict);
        
        NSDictionary *oneKeyOneValue = [NSDictionary dictionaryWithObject:@"Foo Bar" forKey:@"foo"];
        NSLog(@"%@", oneKeyOneValue);
        
        NSArray *keys = [NSArray arrayWithObjects:@"Name", @"Age", @"Email", nil];
        NSArray *values = [NSArray arrayWithObjects:@"Foo Bar", @40, @"foo.bar@example.com", nil];
        NSDictionary *fooBar = [NSDictionary dictionaryWithObjects:values forKeys:keys];
        
        NSLog(@"%@", fooBar);
        
        NSDictionary *fooBar2 = [NSDictionary dictionaryWithObjectsAndKeys:@"Foo Bar", @"Name", @40, @"Age", nil];
        NSLog(@"%@", fooBar2);
        
        NSLog(@"Number of items in fooBar: %lu", [fooBar count]);
        
        // perform multiple lookups in a single statement
        NSArray *lookupKeys = [NSArray arrayWithObjects:@"Name", @"Email", @"Gender", @"Age", nil];
        NSArray *lookupValues = [fooBar objectsForKeys:lookupKeys notFoundMarker:@"???"];
        
        NSLog(@"%@", lookupValues);
    }
    
    return 0;
}
