//
//  FirstViewController.h
//  ejercicio
//
//  Created by Jesus Sainz on 12/03/14.
//  Copyright (c) 2014 SmartPlace. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
