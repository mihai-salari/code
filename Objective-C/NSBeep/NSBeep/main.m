#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int i = 100;
        
        while (i >= 0) {
            printf("Beeping...\n");
            NSBeep();
            sleep(2);
            i--;
        }
    }
    
    return 0;
}
