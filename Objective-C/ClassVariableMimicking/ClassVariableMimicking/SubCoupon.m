#import "SubCoupon.h"

#define INITIAL_NEW_COUPON_ALLOCATION 50

static int availableNewCoupons = INITIAL_NEW_COUPON_ALLOCATION;

@interface SubCoupon ()

+ (int)availableCoupons;
+ (void)setAvailableCoupons:(int)inAvailableCoupons;

@end

@implementation SubCoupon

+ (int)availableCoupons {
    return availableNewCoupons;
}

+ (void)setAvailableCoupons:(int)inAvailableCoupons {
    availableNewCoupons = inAvailableCoupons;
}

// Overrides superclass implementation to have its own value
// for the initial allocation
+ (void)resetCoupon {
    [self setAvailableCoupons:INITIAL_NEW_COUPON_ALLOCATION];
}

@end
