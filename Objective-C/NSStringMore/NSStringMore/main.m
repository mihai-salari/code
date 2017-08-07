#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *hello1 = @"Hello, World";
        
        NSString *hello2 = [NSString alloc];
        hello2 = [hello2 initWithString:@"Hello, World"];
        
        NSString *hello3 = [NSString stringWithString:@"Hello, World"];
        
        NSLog(@"%@", hello1);
        NSLog(@"%@", hello2);
        NSLog(@"%@", hello3);
        
        NSLog(@"hello1 contains %lu characters", [hello1 length]);
        
        unichar ch = [hello1 characterAtIndex:1];
        NSLog(@"The 2nd character in hello1 is '%C'", ch);
        
        NSRange range;
        range.location = 0;
        range.length = 5;
        
        NSLog(@"The first 5 characters in hello1 is '%@'", [hello1 substringWithRange:range]);
        
        NSLog(@"hello1 in lowercase: %@", [hello1 lowercaseString]);
        
        NSLog(@"hello1 is now: %@", [hello1 stringByReplacingOccurrencesOfString:@"World" withString:@"Objective-C"]);
        
        NSLog(@"hello1 is now: %@", [hello1 stringByAppendingString:@" Wow Wow!"]);
        
        if ([hello2 isEqual:hello3]) {
            NSLog(@"The two strings are identical");
        }
    }
    
    return 0;
}
