#import <Foundation/Foundation.h>
#import "Coupon.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"%d coupons left", [Coupon numberCouponsLeft]);
        
        for (int i = 0; i < 100; i++) {
            NSLog(@"creating new coupon #%d", i);
            __unused Coupon *cp = [Coupon new];
        }
        
        NSLog(@"%d coupons left", [Coupon numberCouponsLeft]);
        
        __unused Coupon *cp = [Coupon new];
        
        NSLog(@"%d coupons left", [Coupon numberCouponsLeft]);
        
        
    }
    
    return 0;
}
