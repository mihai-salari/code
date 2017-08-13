#import "Parser.h"

@interface Parser () {
    NSMutableString *_element; // behind the scene, it is a mutable string
}

@end

@implementation Parser

- (id)init {
    if (self = [super init]) {
        self.parser = [[NSXMLParser alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[[NSString alloc] initWithContentsOfFile:@"/tmp/text.xml" encoding:NSUTF8StringEncoding error:nil]]];
        
        NSLog(@"parser is %@", self.parser);
        
        [self.parser setDelegate:self];
        [self.parser parse];
    }
    
    return self;
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict {
    NSLog(@"Started with element %@", elementName);
    self.element = [NSMutableString string];
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
    NSLog(@"Found an element named %@ with a value of '%@'", elementName, self.element);
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    if (self.element == nil) {
        self.element = [[NSMutableString alloc] init];
        [self.element stringByAppendingString:string];
    }
}

- (void)testReadonlyElement {
    [self setElement:@"testing 123..."];
}

- (void)setElement:(NSString *)text {
    _element = (NSMutableString *)text;
}

@end
