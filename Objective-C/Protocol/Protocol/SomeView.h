#import <Cocoa/Cocoa.h>
#import "SomeViewProtocol.h"

@interface SomeView : NSView

@property (weak) id <SomeViewProtocol> dataSource;

@end
