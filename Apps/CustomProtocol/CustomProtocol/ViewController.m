#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    myView = [[MyView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [myView setDelegate:self];
    [self.view addSubview:myView];
    
    UIButton *animateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [animateButton setTitle:@"Animate" forState:UIControlStateNormal];
    [animateButton addTarget:self action:@selector(animate) forControlEvents:UIControlEventTouchUpInside];
    [animateButton setFrame:CGRectMake(25, 380, 270, 30)];
    [self.view addSubview:animateButton];
}

- (void)animate {
    [myView animate];
}

// MARK: - animationNotification protoocl

- (void)animationStartedWithView:(UIView *)animatedView {
    NSLog(@"The animation has started");
    [animatedView setBackgroundColor:[UIColor whiteColor]];
}

- (void)animationHasFinishedWithView:(UIView *)animatedView {
    NSLog(@"The animation has finished");
    [animatedView setBackgroundColor:[UIColor blackColor]];
}

@end
