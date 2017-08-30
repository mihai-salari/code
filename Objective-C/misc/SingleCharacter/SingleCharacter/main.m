#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char c;
        
        printf("Enter a single character: ");
        scanf(" %c", &c);
        printf("Enter a single character: ");
        scanf(" %c", &c);
        
        if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')) {
            printf("An alphabetic character\n");
        } else if (c >= '0' && c <= '9') {
            printf("A digit\n");
        } else {
            printf("A special character?\n");
        }
    }
    
    return 0;
}
