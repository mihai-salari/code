#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *properNamesFile = @"/usr/share/dict/propernames";
        NSString *wordsFile = @"/usr/share/dict/words";
        
        // Read in a file as a huge string,
        // ignoring the possibility of an error
        NSString *nameString = [NSString stringWithContentsOfFile:properNamesFile
                                                         encoding:NSUTF8StringEncoding
                                                            error:NULL];
        
        //NSLog(@"nameString = %@", nameString);
        
        // Break it into an array of strings
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        
        // Go through the array one string at a time
        for (NSString *n in names) {
            // Look for the string "aa" in a case-insensitive manner
            NSRange r = [n rangeOfString:@"AA" options:NSCaseInsensitiveSearch];
            
            // Was it found?
            if (r.location != NSNotFound) {
                NSLog(@"%@", n);
            }
        }
        
        // Find common names that are also regular words (lowercase)
        NSString *wordString = [NSString stringWithContentsOfFile:wordsFile
                                                         encoding:NSUTF8StringEncoding
                                                            error:NULL];
        NSArray *words = [wordString componentsSeparatedByString:@"\n"];
        
        for (NSString *w in words) {
            for (NSString *n in names) {
                if ([[n lowercaseString] isEqualToString:w]) {
                    NSLog(@"word: %@, name: %@", w, n);
                }
            }
        }
    }
    
    return 0;
}
