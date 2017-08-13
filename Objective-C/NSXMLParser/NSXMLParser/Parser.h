#import <Foundation/Foundation.h>

@interface Parser : NSObject <NSXMLParserDelegate>

@property (nonatomic) NSXMLParser *parser;
@property (nonatomic, readonly, copy) NSString *element;

- (void)testReadonlyElement;
- (void)setElement:(NSString *)text;

@end
