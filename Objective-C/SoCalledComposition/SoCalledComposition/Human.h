#import <Foundation/Foundation.h>
#import "Hand.h"
#import "Foot.h"

@interface Human : NSObject

// Composition
@property Hand *hand;
@property Foot *foot;

@end
