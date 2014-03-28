//
//  Map_ViewController.m
//  ejercicio_maps
//
//  Created by Jesus Sainz on 26/03/14.
//  Copyright (c) 2014 SmartPlace. All rights reserved.
//

#import "Map_ViewController.h"
//#import "AddressBook/AddressBook.h"
//#import "MyAnnotation.h"
#import "ViewController.h"

//#define METERS_PER_MILE 1609.344


@interface Map_ViewController (){
    
    NSString *nombre;
    CLLocationCoordinate2D location1;
}

@end

@implementation Map_ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.mapa.delegate=self;
    // Do any additional setup after loading the view.
    
    nombre=self.nombre1;
    NSLog(@"---%@",nombre);
    
    if ([nombre isEqualToString:@"H.Cabañas"]){
        
        location1.latitude=20.677027;
        location1.longitude=-103.337324;
        
    }else if ([nombre isEqualToString:@"Omnilife"]){
        location1.latitude=(double)20.674504;
        location1.longitude=(double)-103.391051;
    
    }else if ([nombre isEqualToString:@"Catedral"]){
        location1.latitude=(double)20.677287;
        location1.longitude=(double)-103.346977;
    
    }else if ([nombre isEqualToString:@"Teatro Degollado"]){
        location1.latitude=(double)20.677320;
        location1.longitude=(double)-103.344423;
        
    }else if ([nombre isEqualToString:@"Colomos"]){
        location1.latitude=(double)20.708538;
        location1.longitude=(double)-103.394720;
    }
    [self point];
}
-(void)point{
    
    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    point.coordinate = CLLocationCoordinate2DMake(location1.latitude,location1.longitude);
    point.title = nombre;
    // point.subtitle = @"subtitle";
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(location1, 1000, 1000);
    
    [self.mapa setRegion:viewRegion animated:YES];
    [self.mapa addAnnotation:point];

}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
