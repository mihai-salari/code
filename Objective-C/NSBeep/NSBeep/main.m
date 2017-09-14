#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int i = 10;
        
        while (i >= 0) {
            printf("Beeping... %d\n", i);
            NSBeep();
            sleep(2);
            i--;
        }
    }
    
    return 0;
}
