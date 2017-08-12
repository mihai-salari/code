#import "CTFixedLease.h"

@implementation CTFixedLease

+ (CTLease *)fixedTermLeaseWithPrice:(float)totalRental forWeeks:(int)numberOfWeeks {
    CTFixedLease *lease = [CTFixedLease alloc];
    lease.totalRental = totalRental;
    lease.numberOfWeeks = numberOfWeeks;
    
    return lease;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"$%0.2f for %d weeks", self.totalRental, self.numberOfWeeks];
}

@end
