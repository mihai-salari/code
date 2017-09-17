//
//  ViewController.m
//  BNRandomPasswordObjC
//
//  Created by Lee Choon Siong on 2017/09/17.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (void)seed:(id)sender {
    // Seed the random number generator with the time.
    srandom((unsigned)time(NULL));
    [self.textField setStringValue:@"Generator seeded"];
}

@end
