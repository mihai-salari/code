#import "ViewController.h"
#import "RentalManager-Swift.h"

//#define ARRAY_SIZE(x) (sizeof(x) / sizeof(x[0]))

@interface ViewController () // Class extension

@property (nonatomic, readonly, strong) NSMutableArray *properties;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // We are using a model from a Swift class here
    RentalProperty *p1 = [[RentalProperty alloc] initWithAddress:@"13 Waverly Crescent, Sumner" type:PropertyTypeTownHouse weeklyRentalPrice:420.0f];
    RentalProperty *p2 = [[RentalProperty alloc] initWithAddress:@"74 Roberson Lane, Christchurch" type:PropertyTypeApartment weeklyRentalPrice:365.0f];
    RentalProperty *p3 = [[RentalProperty alloc] initWithAddress:@"17 Kipling Street, Riccarton" type:PropertyTypeApartment weeklyRentalPrice:275.9f];
    RentalProperty *p4 = [[RentalProperty alloc] initWithAddress:@"4 Everglade Ridge, Sumner" type:PropertyTypeVilla weeklyRentalPrice:1500.0f];
    RentalProperty *p5 = [[RentalProperty alloc] initWithAddress:@"19 Islington Road, Clifton" type:PropertyTypeBungalow weeklyRentalPrice:2000.0f];
    
    _properties = [NSMutableArray arrayWithArray:@[p1, p2, p3, p4, p5]];
    
    // Use plist file to load images
    NSString *path = [[NSBundle mainBundle] pathForResource:@"CityMappings" ofType:@"plist"];
    cityMappings = [[NSDictionary alloc] initWithContentsOfFile:path];
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
    return self.properties.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    //cell.textLabel.text = [NSString stringWithFormat:@"Rental Property %d", indexPath.row];
    RentalProperty *property = self.properties[indexPath.row];
    
    // To separate the city from the address, for cell image use
    int indexOfComma = [property.address rangeOfString:@","].location;
    NSString *address = [property.address substringToIndex:indexOfComma];
    NSString *city = [property.address substringFromIndex:indexOfComma + 2];
    
    cell.textLabel.text = property.address;
    
    NSString *imageName = [cityMappings objectForKey:city];
    
    /*if ([city isEqual:@"Clifton"]) {
        cell.imageView.image = [UIImage imageNamed:@"mountain.jpg"];
    } else if ([city isEqual:@"Sumner"]) {
        cell.imageView.image = [UIImage imageNamed:@"sea.png"];
    } else {
        cell.imageView.image = [UIImage imageNamed:@"city.png"];
    }*/
    
    cell.imageView.image = [UIImage imageNamed:imageName];
    
    cell.detailTextLabel.text = [NSString stringWithFormat:@"Rents for $%0.2f per week", property.weeklyRentalPrice];
    
    //NSLog(@"Rental Property %d", indexPath.row);
    
    return cell;
}

@end
