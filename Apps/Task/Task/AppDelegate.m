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
    [self.mainView addSubview:self.insertButton];
    
    // Put the window on the screen
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
