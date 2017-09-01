#import <Foundation/Foundation.h>
#import "Coupon.h"
#import "SubCoupon.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"%d coupons left", [Coupon numberCouponsLeft]);
        NSLog(@"%d sub-coupons left", [SubCoupon numberCouponsLeft]);
        
        for (int i = 0; i < 100; i++) {
            NSLog(@"creating new coupon #%d", i);
            __unused Coupon *cp = [Coupon new];
            NSLog(@"creating new sub-coupon #%d", i);
            __unused SubCoupon *subCp = [SubCoupon new];
        }
        
        NSLog(@"%d coupons left", [Coupon numberCouponsLeft]);
        NSLog(@"%d sub-coupons left", [SubCoupon numberCouponsLeft]);
        
        __unused Coupon *cp = [Coupon new];
        
        NSLog(@"%d coupons left", [Coupon numberCouponsLeft]);
        NSLog(@"%d sub-coupons left", [SubCoupon numberCouponsLeft]);
    }
    
    return 0;
}
