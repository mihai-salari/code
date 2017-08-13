//
//  ViewController.m
//  CustomProtocol
//
//  Created by Lee Choon Siong on 2017/08/13.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    myView = [[MyView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [myView setDelegate:self];
    [self.view addSubview:myView];
    
    UIButton *animateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [animateButton setTitle:@"Animate" forState:UIControlStateNormal];
    [animateButton addTarget:self action:@selector(animate) forControlEvents:UIControlEventTouchUpInside];
    [animateButton setFrame:CGRectMake(25, 380, 270, 30)];
    [self.view addSubview:animateButton];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)animate {
    [myView animate];
}

- (void)animationStartedWithView:(UIView *)animatedView {
    NSLog(@"The animation has started");
    [animatedView setBackgroundColor:[UIColor whiteColor]];
}

- (void)animationHasFinishedWithView:(UIView *)animatedView {
    NSLog(@"The animation has finished");
    [animatedView setBackgroundColor:[UIColor blackColor]];
}

@end
