//
//  SecondViewController.h
//  ejercicio
//
//  Created by Jesus Sainz on 12/03/14.
//  Copyright (c) 2014 SmartPlace. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController <UIPickerViewDataSource,UIPickerViewDelegate>
@property (strong, nonatomic) IBOutlet UIPickerView *picker;

@end
