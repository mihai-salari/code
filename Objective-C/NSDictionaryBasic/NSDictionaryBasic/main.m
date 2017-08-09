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
    }
    
    return 0;
}
