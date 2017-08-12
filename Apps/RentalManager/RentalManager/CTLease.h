#import <Foundation/Foundation.h>

@interface CTLease : NSObject

// Note that we return a CTLease object
+ (CTLease *)periodicLease:(float)weeklyPrice;
+ (CTLease *)fixedTermLeaseWithPrice:(float)totalRental forWeeks:(int)numberOfWeeks;

@end
