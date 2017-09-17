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
    NSDate *now = [NSDate date];
    
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setDateStyle:NSDateFormatterMediumStyle];
    [df setTimeStyle:NSDateFormatterMediumStyle];
    
    [self.textField setStringValue:[df stringFromDate:now]];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (void)generate:(id)sender {
    // Generate a random number between 1 and 100 inclusive
    int generated;
    
    generated = (int)(random() % 100) + 1;
    
    NSLog(@"generated = %d", generated);
    
    [self.textField setIntValue:generated];
}

- (void)seed:(id)sender {
    // Seed the random number generator with the time
    srandom((unsigned)time(NULL));
    [self.textField setStringValue:@"Generator seeded"];
}

@end
