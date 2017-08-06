#import "ViewController.h"
#import "RentalManager-Swift.h"

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

/*
 
 I have removed the original ViewController scene in the storyboard, replaced with
 the TableViewController scene, and then embedded it in the NavigationViewController.
 
 Remember, to change the superclass of this view controller to TableViewController and
 update the 'Class' field in Identify Inspector respectively.
 
 */

// MARK: - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 25;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"Rental Property %d", indexPath.row];
    
    NSLog(@"Rental Property %d", indexPath.row);
    
    return cell;
}

@end
