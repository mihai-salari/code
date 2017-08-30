#import <Foundation/Foundation.h>
#import "Foot.h"
#import "SmallHand.h"

@interface Human : NSObject

// Composition
@property Hand *hand;
@property Foot *foot;

- (void)print;

@end
