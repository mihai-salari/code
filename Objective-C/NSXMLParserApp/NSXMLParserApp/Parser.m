//
//  Parser.m
//  NSXMLParserApp
//
//  Created by Lee Choon Siong on 2017/08/13.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

#import "Parser.h"

@implementation Parser

- (id)init {
    if (self = [super init]) {
        self.parser = [[NSXMLParser alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"sample" ofType:@"xml"]]];
        
        [self.parser setDelegate:self];
        [self.parser parse];
    }
    
    return self;
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict {
    NSLog(@"Started with element '%@'", elementName);
    self.element = [NSMutableString string];
    
    NSLog(@"element is '%@'", self.element);
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
    NSLog(@"Found an element named '%@' with a value of '%@'", elementName, self.element);
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    NSLog(@"found character!");
    
    if (self.element == nil) {
        NSLog(@"element is nil, alloc and init!");
        self.element = [[NSMutableString alloc] init];
    }
    
    [self.element appendString:string];
}

@end
