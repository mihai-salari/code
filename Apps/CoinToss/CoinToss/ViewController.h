#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    UILabel *status;
    UILabel *result;
}

@property (nonatomic) IBOutlet UILabel *status;
@property (nonatomic) IBOutlet UILabel *result;

- (IBAction)callHeads;
- (IBAction)callTails;

@end

