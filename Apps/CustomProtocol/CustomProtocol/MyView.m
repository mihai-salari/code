#import "MyView.h"

@implementation MyView

@synthesize delegate; // so that our instance variable will named as delegate, not _delegate

// designated initializer
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
    [UIView setAnimationWillStartSelector:@selector(animationStarted)];
    [UIView setAnimationDidStopSelector:@selector(animationStopped)];
    CGRect newFrame = CGRectMake(boxView.frame.origin.x, boxView.frame.origin.y + 100, boxView.frame.size.height, boxView.frame.size.width);
    [boxView setFrame:newFrame];
    [UIView commitAnimations];
}

// respond to callbacks
- (void)animationStarted {
    if ([delegate respondsToSelector:@selector(animationStartedWithView:)]) {
        [delegate animationStartedWithView:self];
    }
}

- (void)animationStopped {
    if ([delegate respondsToSelector:@selector(animationHasFinishedWithView:)]) {
        [delegate animationHasFinishedWithView:self];
    }
}

@end
