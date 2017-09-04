#import <Foundation/Foundation.h>
#import "KlassA.h"
#import "KlassB.h"

// The selectors for both KlassA and KlassB are same, but Objective-C
// runtime is able to call them correctly!

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        KlassA *a = [KlassA new];
        [a sayHelloTo:@"Foo Bar"];
        
        KlassB *b = [KlassB new];
        [b sayHelloTo:@"Bar Foo"];
    }
    
    return 0;
}
