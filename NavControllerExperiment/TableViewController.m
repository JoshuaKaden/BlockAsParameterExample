//
//  TableViewController.m
//  NavControllerExperiment
//
//  Created by Kaden, Joshua on 11/2/15.
//  Copyright © 2015 Kaden, Joshua. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()
@property (nonatomic, strong) NSArray *items;
@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.items = @[@"Red", @"Orange", @"Yellow", @"Green", @"Blue", @"Indigo", @"Violet"];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tableViewControllerReuseID"];
    if (!cell) { cell = [[UITableViewCell alloc] init]; }
    cell.textLabel.text = [self.items objectAtIndex:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *itemValue = [self.items objectAtIndex:indexPath.row];
    self.itemSelectionAction(itemValue);
    [self.navigationController popViewControllerAnimated:YES];
}

@end
