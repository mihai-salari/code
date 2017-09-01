#import "Coupon.h"

#define INITIAL_COUPON_ALLOCATION 100

static int availableCoupons = INITIAL_COUPON_ALLOCATION; // visible to this file only

@implementation Coupon

- (id)init {
    if (self = [super init]) {
        if (availableCoupons == 0) {
            return nil;
        }
        
        availableCoupons -= 1;
    }
    
    return self;
}

+ (int)numberCouponsLeft {
    return availableCoupons;
}

+ (void)resetCoupon {
    availableCoupons = INITIAL_COUPON_ALLOCATION;
}

@end
