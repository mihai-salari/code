//
//  MyView.h
//  CustomProtocol
//
//  Created by Lee Choon Siong on 2017/08/13.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol animationNotification

- (void)animationHasFinishedWithView:(UIView *)animatedView;

@optional

- (void)animationStartedWithView:(UIView *)animatedView;

@end

@interface MyView : UIView {
    id <animationNotification, NSObject> __unsafe_unretained delegate;
    UIView *boxView;
}

@property (nonatomic, assign) id delegate;

- (void)animate;

@end
