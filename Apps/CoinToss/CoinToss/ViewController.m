#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@end

@implementation ViewController

@synthesize status, result;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) simulateCoinToss:(BOOL)userCalledHeads {
    BOOL coinLandedOnHeads = (arc4random() % 2) == 0; // generate a random number between 0 and 1
    result.text = coinLandedOnHeads ? @"Heads" : @"Tails";
    
    if (coinLandedOnHeads == userCalledHeads) {
        status.text = @"Correct!";
    } else {
        status.text = @"Wrong!";
    }
    
    CABasicAnimation *rotation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    rotation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    rotation.fromValue = [NSNumber numberWithFloat:0.0f];
    rotation.toValue = [NSNumber numberWithFloat:720 * M_PI / 180.0f];
    rotation.duration = 2.0f;
    [status.layer addAnimation:rotation forKey:@"rotate"];
    
    CABasicAnimation *fade = [CABasicAnimation animationWithKeyPath:@"opacity"];
    fade.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    fade.fromValue = [NSNumber numberWithFloat:0.0f];
    fade.toValue = [NSNumber numberWithFloat:1.0f];
    fade.duration = 3.5f;
    [status.layer addAnimation:fade forKey:@"fade"];
}

- (IBAction)callHeads {
    [self simulateCoinToss:YES];
}

- (IBAction)callTails {
    [self simulateCoinToss:NO];
}

@end
