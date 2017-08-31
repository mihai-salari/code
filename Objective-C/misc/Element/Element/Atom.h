#import <Foundation/Foundation.h>

@interface Atom : NSObject

@property (readonly) NSUInteger protons;
@property (readonly) NSUInteger neutrons;
@property (readonly) NSUInteger electrons;
@property (readonly) NSString *chemicalElement;

- (NSUInteger)massNumber;

@end
