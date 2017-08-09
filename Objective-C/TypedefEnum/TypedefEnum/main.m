#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        typedef enum {
            east,
            south,
            west,
            north
        } Direction;
        
        Direction now = east;
        
        // Using NS_Enum()
        
        typedef NS_ENUM(char, Rank) {
            one,
            two,
            three,
            four
        };
        
        Rank rank = one;
    }
    
    return 0;
}
