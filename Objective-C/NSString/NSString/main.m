#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *firstName = @"Foo";
        NSString *lastName = @"Bar";
        NSString *fullName = [NSString stringWithFormat:@"%@, %@", firstName, lastName];
        
        NSLog(@"My name is %@", fullName);
        
        // Some NSString instance methods
        
        NSUInteger nameCount = [fullName length];
        NSLog(@"My name is %lu characters long.", nameCount);
        
        if ([firstName isEqualToString:lastName]) {
            NSLog(@"%@ and %@ are equal.", firstName, lastName);
        } else {
            NSLog(@"%@ and %@ are not equal.", firstName, lastName);
        }
        
        NSLog(@"My name is %@.", [fullName uppercaseString]);
        
        NSRange match = [fullName rangeOfString:firstName];
        
        if (match.location == NSNotFound) {
            NSLog(@"No match found!");
        } else {
            NSLog(@"Match found!");
        }
    }
    
    return 0;
}
