#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        struct box {
            int width;
            int height;
            int depth;
        };
        
        struct box a, b;
        
        a.width = 5;
        a.height = 4;
        a.depth = 10;
        
        b.width = 20;
        b.height = 10;
        b.depth = 5;
        
        // Initialize struct with initial values
        struct box c = { 10, 20, 30 };
        struct box d = { .width = 10, .height = 20, .depth = 30 };
        
        NSLog(@"Box A's volume is %d", a.width * a.height * a.depth);
        NSLog(@"Box B's volume is %d", b.width * b.height * b.depth);
        NSLog(@"Box C's volume is %d", c.width * c.height * c.depth);
        NSLog(@"Box D's volume is %d", d.width * d.height * d.depth);
    }
    
    return 0;
}
