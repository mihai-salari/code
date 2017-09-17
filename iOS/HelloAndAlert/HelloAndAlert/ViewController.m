//
//  ViewController.m
//  HelloAndAlert
//
//  Created by Lee Choon Siong on 2017/09/18.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

#import "ViewController.h"

//#define kDEBUG

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showAlert:(id)sender {
#ifdef kDEBUG
    NSLog(@"Ouch!");
#endif
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hello"
                                                    message:@"Hello, World!"
                                                   delegate:nil
                                          cancelButtonTitle:@"Close"
                                          otherButtonTitles:nil, nil];
    
    [alert show];
    [self.helloButton setTitle:@"Click" forState:UIControlStateNormal];
}

@end
