#import <UIKit/UIKit.h>
#import "MyView.h" // To use animationNotification protocol

@interface ViewController : UIViewController <animationNotification> {
    MyView *myView;
}

- (void)animate;

@end
