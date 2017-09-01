#import <Foundation/Foundation.h>
#import "Writer.h"

@interface Atom : NSObject <Writer> {
    // So that subclass of Atom can access the ivars,
    // without this definition, subclass will not be able to access these ivars
    // as they are declared as @private by default.
    @protected NSUInteger _protons;
    @protected NSUInteger _neutrons;
    @protected NSUInteger _electrons;
    @protected NSString *_chemicalElement;
    @protected NSString *_atomicSymbol;    
}

@property (readonly) NSUInteger protons;
@property (readonly) NSUInteger neutrons;
@property (readonly) NSUInteger electrons;
@property (readonly) NSString *chemicalElement;
@property (readonly) NSString *atomicSymbol;

- (NSUInteger)massNumber;

- (void)logInfo;
- (void)logInfoWith:(NSString *)info;

@end
