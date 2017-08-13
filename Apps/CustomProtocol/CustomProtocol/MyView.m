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

- (void)animate {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:2];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationWillStartSelector:@selector(<#selector#>)];
    [UIView setAnimationDidStopSelector:@selector(<#selector#>)];
    CGRect newFrame = CGRectMake(boxView.frame.x, boxView.frame.y + 100, boxView.frame.size.height, boxView.frame.size.width);
    [boxView setFrame:newFrame];
    [UIView commitAnimations];
}

@end
