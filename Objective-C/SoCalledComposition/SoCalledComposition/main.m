#import <Foundation/Foundation.h>
#import "Human.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Human *man = [Human new];
        [man print];
        
        Human *woman = [Human new];
        [woman print];
        
        Hand *hand = [Hand new];
        woman.hand = hand;
        
        Foot *foot = [Foot new];
        woman.foot = foot;
        
        [woman print];
    }
    
    return 0;
}
