#import "CTPeriodicLease.h"

@implementation CTPeriodicLease

+ (CTLease *)periodicLeaseWithWeeklyPrice:(float)weeklyPrice {
    CTPeriodicLease *lease = [CTPeriodicLease alloc];
    lease.weeklyRental = weeklyPrice;
    
    return lease;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"$%0.2f per week", self.weeklyRental];
}

@end
