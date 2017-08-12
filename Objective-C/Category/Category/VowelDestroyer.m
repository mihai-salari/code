#import "VowelDestroyer.h"

@implementation NSString (VowelDestroyer)

- (NSString *)stringByDestroyingVowels {
    NSMutableString *mutableString = [NSMutableString stringWithString:self];
    NSRange stringRange = NSMakeRange(0, [mutableString length]);
    NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
    
    for (NSUInteger i = 0; i < [vowels count]; i++) {
        
        NSString *string = [vowels objectAtIndex:i];
        
        [mutableString replaceOccurrencesOfString:string
                                       withString:@""
                                          options:NSCaseInsensitiveSearch
                                            range:stringRange];
    }
    
    return [NSString stringWithString:mutableString];
}

@end
