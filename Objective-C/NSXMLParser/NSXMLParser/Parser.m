#import "Parser.h"

@interface Parser () {
    NSMutableString *_element; // behind the scene, it is a mutable string
}

@end

@implementation Parser {
    
}

- (void)testReadonlyElement {
    [self setElement:@"testing 123..."];
}

- (void)setElement:(NSString *)text {
    _element = (NSMutableString *)text;
}

@end
