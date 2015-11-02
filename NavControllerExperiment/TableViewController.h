//
//  TableViewController.h
//  NavControllerExperiment
//
//  Created by Kaden, Joshua on 11/2/15.
//  Copyright © 2015 Kaden, Joshua. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^ItemSelectionAction)(NSString *);

@interface TableViewController : UITableViewController

@property (readwrite, copy) ItemSelectionAction itemSelectionAction;

@end
