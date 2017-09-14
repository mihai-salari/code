//
//  ViewController.m
//  BNRContacts
//
//  Created by Lee Choon Siong on 2017/06/19.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

#import "ContactsViewController.h"
#import "BNRContacts-Swift.h"

@interface ContactsViewController ()

@property (nonatomic, readonly, strong) NSMutableArray *contacts;

@end

@implementation ContactsViewController

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        // Original Objective-C
//        NSArray *contactArray = @[@"Foo Bar", @"Johnny Appleseed", @"Alice Buffett"];
//        _contacts = [NSMutableArray arrayWithArray:contactArray];
        
        // Use Swift
//        Contact *c1 = [[Contact alloc] initWithName:@"Johny Appleseed"];
//        Contact *c2 = [[Contact alloc] initWithName:@"Paul Bunyan"];
//        Contact *c3 = [[Contact alloc] initWithName:@"Calamity Jane"];
//        _contacts = [NSMutableArray arrayWithArray:@[c1, c2, c3]];
        _contacts = [NSMutableArray array];
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
    
    // For Objective-C
    //NSString *contact = self.contacts[indexPath.row];
    //cell.textLabel.text = contact;
    
    // For Swift
    Contact *contact = self.contacts[indexPath.row];
    cell.textLabel.text = contact.name;
    
    return cell;
}

- (IBAction)cancelToContactsViewController:(UIStoryboardSegue *)segue {
    // No action to take if user cancels
}

- (IBAction)createNewContact:(UIStoryboardSegue *)segue {
    NewContactViewController *newContactVC = segue.sourceViewController;
    NSString *firstName = newContactVC.firstNameTextField.text;
    NSString *lastName = newContactVC.lastNameTextField.text;
    
    if (firstName.length != 0 || lastName.length != 0) {
        NSString *name = [NSString stringWithFormat:@"%@ %@", firstName, lastName];
        Contact *newContact = [[Contact alloc] initWithName:name];
        [self.contacts addObject:newContact];
        [self.tableView reloadData];
    }
}

@end
