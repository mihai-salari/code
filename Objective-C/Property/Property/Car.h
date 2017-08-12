#import <Foundation/Foundation.h>

@interface Car : NSObject

// Using different name for getter, default will be hybrid
@property (nonatomic, getter=isHybrid) BOOL hybrid;

@end
