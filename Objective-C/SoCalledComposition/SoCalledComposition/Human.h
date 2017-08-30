#import <Foundation/Foundation.h>
#import "Hand.h"
#import "SmallHand.h"
#import "Foot.h"

@interface Human : NSObject

// Composition
@property Hand *hand;
@property Foot *foot;

- (void)print;

@end
