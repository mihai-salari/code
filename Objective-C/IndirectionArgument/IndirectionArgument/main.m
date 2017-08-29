#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FILE *wordFile = fopen("/usr/share/dict/propernames", "r");
        char word[100];
        
        // fgets to get a line
        while (fgets(word, 100, wordFile)) {
            // strip off the trailing \n
            word[strlen(word) - 1] = '\0';
            NSLog(@"%s is %lu characters long", word, strlen(word));
        }
        
        fclose(wordFile);
    }
    
    return 0;
}
