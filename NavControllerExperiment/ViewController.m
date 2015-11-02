//
//  ViewController.m
//  NavControllerExperiment
//
//  Created by Kaden, Joshua on 11/2/15.
//  Copyright © 2015 Kaden, Joshua. All rights reserved.
//

#import "ViewController.h"
#import "TableViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *selectedItemLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)viewListButtonTapped:(id)sender {
    TableViewController *tableViewController = [[TableViewController alloc] init];
    tableViewController.itemSelectionAction = ^(NSString *itemName) { self.selectedItemLabel.text = itemName; };
    [self.navigationController pushViewController:tableViewController animated:YES];
}

@end
