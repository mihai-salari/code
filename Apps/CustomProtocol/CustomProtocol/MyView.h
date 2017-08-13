#import <UIKit/UIKit.h>

@protocol animationNotification

- (void)animationHasFinishedWithView:(UIView *)animatedView; // required

@optional

- (void)animationStartedWithView:(UIView *)animatedView; // optional

@end

@interface MyView : UIView {
    id <animationNotification, NSObject> __unsafe_unretained delegate; // NSObject is needed
    
    UIView *boxView; // custom view object
}

@property (nonatomic, assign) id delegate;

- (void)animate;

@end
