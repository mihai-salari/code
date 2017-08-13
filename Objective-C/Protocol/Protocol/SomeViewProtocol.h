#import <Cocoa/Cocoa.h>

@protocol SomeViewProtocol

- (NSUInteger)numberOfSegments;
- (CGFloat)sizeOfSegmentAtIndex:(NSUInteger)segmentIndex;

@optional

- (NSString *)titleForSegmentAtIndex:(NSUInteger)segmentIndex;
- (BOOL)shouldExplodeSegmentAtIndex:(NSUInteger)segmentIndex;

@required

- (NSColor *)colorForSegmentAtIndex:(NSUInteger)segmentIndex;

@end

@interface SomeViewProtocol : NSObject

@end
