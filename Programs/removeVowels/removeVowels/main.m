#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *originalStrings = @[@"Kuala Lumpur", @"Johor", @"Penang", @"Sabah", @"Sarawak", @"Selangor"];

        NSLog(@"original strings: %@", originalStrings);
        
        NSMutableArray *devowelizedStrings = [NSMutableArray array];
        NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
        
        // Declare the block variable
        void (^devowelizer)(id, NSUInteger, BOOL *);
        
        // Compose a block and assign it to the block variable
        devowelizer = ^(id string, NSUInteger i, BOOL *stop) {
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

/*

 2017-08-15 13:01:24.251048+0800 removeVowels[2253:99535] original strings: (
 "Kuala Lumpur",
 Johor,
 Penang,
 Sabah,
 Sarawak,
 Selangor
 )
 2017-08-15 13:01:24.251432+0800 removeVowels[2253:99535] devowelized strings: (
 "Kl Lmpr",
 Jhr,
 Pnng,
 Sbh,
 Srwk,
 Slngr
 )
 Program ended with exit code: 0

*/
