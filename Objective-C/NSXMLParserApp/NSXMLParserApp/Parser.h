//
//  Parser.h
//  NSXMLParserApp
//
//  Created by Lee Choon Siong on 2017/08/13.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Parser : NSObject <NSXMLParserDelegate>

@property (nonatomic) NSXMLParser *parser;
@property (nonatomic) NSMutableString *element;

@end
