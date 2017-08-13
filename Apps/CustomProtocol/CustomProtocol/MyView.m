//
//  MyView.m
//  CustomProtocol
//
//  Created by Lee Choon Siong on 2017/08/13.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

#import "MyView.h"

@implementation MyView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        [self setBackgroundColor:[UIColor blackColor]];
        
        boxView = [[UIView alloc] initWithFrame:CGRectMake(50, 30, 220, 220)];
        [boxView setBackgroundColor:[UIColor redColor]];
        [self addSubview:boxView];
    }
    
    return self;
}

@end
