#import "CTLease.h"

@interface CTPeriodicLease : CTLease

@property (nonatomic) float weeklyRental;

+ (CTLease *)periodicLeaseWithWeeklyPrice:(float)weeklyPrice;

@end
