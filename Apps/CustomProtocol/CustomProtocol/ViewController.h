//
//  ViewController.h
//  CustomProtocol
//
//  Created by Lee Choon Siong on 2017/08/13.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyView.h"

@interface ViewController : UIViewController <animationNotification> {
    MyView *myView;
}

- (void)animate;

@end
