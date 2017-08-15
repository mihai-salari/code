#import <Foundation/Foundation.h>

//
// typedefs belong at the top of the file or in a header,
// outside of any method implementations.
//

typedef void (^StringDevowelizerBlock)(id, NSUInteger, BOOL *);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *originalStrings = @[@"Kuala Lumpur", @"Johor", @"Penang", @"Sabah", @"Sarawak", @"Selangor"];
        
        NSLog(@"original strings: %@", originalStrings);
        
        NSMutableArray *devowelizedStrings = [NSMutableArray array];
        NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
        
        // Declare and compose a block and assign it to the block variable
        StringDevowelizerBlock devowelizer = ^(id string, NSUInteger i, BOOL *stop) {
            NSLog(@"string is %@, index is %lu", string, i);
            
            NSRange sRange = [string rangeOfString:@"s" options:NSCaseInsensitiveSearch];
            
            if (sRange.location != NSNotFound) { // we found a 's'
                *stop = YES; // note the use of dereferencing pointer here!
                
                NSLog(@"Oops, found a s, I am out!");
                
                return; // end this iteration
            }
            
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            // Iterate over the array of vowels, replacing occurrences of each
            // with an empty string
            for (NSString *vowel in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:vowel
                                           withString:@""
                                              options:NSCaseInsensitiveSearch
                                                range:fullRange];
            }
            
            [devowelizedStrings addObject:newString];
        };
        
        // Iterate over the array with block
        [originalStrings enumerateObjectsUsingBlock:devowelizer];
        
        NSLog(@"devowelized strings: %@", devowelizedStrings);
    }
    
    return 0;
}
