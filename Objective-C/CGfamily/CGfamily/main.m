#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        CGPoint p;
        p.x = 2;
        p.y = 2;
        
        CGSize s;
        s.width = 10;
        s.height = 10;
        
        CGRect r;
        r.origin = p;
        r.size = s;
        
        CGPoint p2 = CGPointMake(4.0, 4.0);
        CGSize s2 = CGSizeMake(100.0, 200.0);
        
        CGRect r2 = CGRectMake(5.0, 5.0, 10.0, 10.0);
    }
    
    return 0;
}
