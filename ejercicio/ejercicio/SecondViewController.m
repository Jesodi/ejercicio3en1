//
//  SecondViewController.m
//  ejercicio
//
//  Created by Jesus Sainz on 12/03/14.
//  Copyright (c) 2014 SmartPlace. All rights reserved.
//

#import "SecondViewController.h"

NSString *arreglo2[5] = {@"Batman",@"Superman",@"FLash",@"Joker",@"Spider-Man"};

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSInteger) pickerView: (UIPickerView *) pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 5;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return arreglo2[row];
}


@end
