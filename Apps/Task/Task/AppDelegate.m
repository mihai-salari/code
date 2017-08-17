#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Create and configure the UIWindow instance
    CGRect windowFrame = [[UIScreen mainScreen] bounds]; // get screen size
    UIWindow *mainWindow = [[UIWindow alloc] initWithFrame:windowFrame];
    self.window = mainWindow;
    [self.window setBackgroundColor:[UIColor lightGrayColor]];
    
    // Create and configure the main view controller (we need one for the window's rootviewcontroller, since the default vc is deleted)
    UIViewController *mainVC = [[UIViewController alloc] init];
    self.window.rootViewController = mainVC;
    
    // Create and configure a main view as the parent for all other subviews
    self.mainView = [[UIView alloc] initWithFrame:windowFrame]; // use the whole screen size
    [self.mainView setBackgroundColor:[UIColor whiteColor]];
    [self.window addSubview: self.mainView];
    
    mainVC.view = self.mainView; // set the main view controller's view property to this main view
    
    // Create the frames for our UI objects
    CGRect tableFrame = CGRectMake(0, 80, windowFrame.size.width, windowFrame.size.height - 100);
    CGRect fieldFrame = CGRectMake(20, 40, 200, 31);
    CGRect buttonFrame = CGRectMake(228, 40, 72, 31);
    
    // Create and configure the UITableView instance
    self.taskTable = [[UITableView alloc] initWithFrame:tableFrame style:UITableViewStylePlain];
    [self.taskTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"]; // tell the table view which class to instantiate whenever it needs to create a new cell
    [self.mainView addSubview:self.taskTable];
    
    // Create and configure the UITextField instance, where new tasks will be entered
    self.taskField = [[UITextField alloc] initWithFrame:fieldFrame];
    self.taskField.borderStyle = UITextBorderStyleRoundedRect;
    self.taskField.placeholder = @"Type a task, tap Insert";
    [self.mainView addSubview:self.taskField];
    
    // Create and configure the UIButton instance
    self.insertButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.insertButton.frame = buttonFrame;
    [self.insertButton setTitle:@"Insert" forState:UIControlStateNormal];
    [self.insertButton addTarget:self action:@selector(addTask:) forControlEvents:UIControlEventTouchUpInside];
    [self.mainView addSubview:self.insertButton];
    
    // Put the window on the screen
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)addTask:(id)sender {
    NSString *text = [self.taskField text];
    
    if ([text length] == 0) {
        return;
    }
    
    NSLog(@"Task entered: %@", text);
    
    [self.taskField setText:@""];
    [self.taskField resignFirstResponder];
}

@end
