#import "Coupon.h"

#define INITIAL_COUPON_ALLOCATION 100

static int availableCoupons = INITIAL_COUPON_ALLOCATION; // visible to this file only

@interface Coupon() // declare private accessors in an extension

+ (int)availableCoupons;
+ (void)setAvailableCoupons:(int)inAvailableCoupons;

@end

@implementation Coupon

+ (int)numberCouponsLeft {
    return availableCoupons;
}

+ (void)resetCoupon {
    availableCoupons = INITIAL_COUPON_ALLOCATION;
}

+ (int)availableCoupons {
    return availableCoupons;
}

+ (void)setAvailableCoupons:(int)inAvailableCoupons {
    availableCoupons = inAvailableCoupons;
}

// Without fixing subclass issue from the use of 'class variable'
//- (id)init {
//    if (self = [super init]) {
//        if (availableCoupons == 0) {
//            return nil;
//        }
//        
//        availableCoupons -= 1;
//    }
//    
//    return self;
//}

// Fix subclassing problem while using 'class variable'
// Note that we are using accessors here to retrieve or set 'availableCoupons'
- (id)init {
    if (self = [super init]) {
        if ([[self class] availableCoupons] == 0) {
            return nil;
        }
        
        [[self class] setAvailableCoupons:[[self class] availableCoupons] - 1];
    }
    
    return self;
}

- (void)dealloc {
    NSLog(@"deallocating %p", self);
}

@end
