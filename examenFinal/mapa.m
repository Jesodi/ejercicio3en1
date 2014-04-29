//
//  mapa.m
//  examenFinal
//
//  Created by Jesus Sainz on 29/04/14.
//  Copyright (c) 2014 SmartPlace. All rights reserved.
//

#import "mapa.h"
#import "AddressBook/AddressBook.h"
#import "MyAnnotation.h"

#define METERS_PER_MILE 1609.344

#define latitude1     24.764847
#define longitude1   -107.474711

@interface mapa ()

@end

@implementation mapa

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
    // Do any additional setup after loading the view.
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    CLLocationCoordinate2D location1;
    location1.latitude = latitude1;
    location1.longitude = longitude1;
    
    MKPointAnnotation *point1 =[[MKPointAnnotation alloc] init];
    point1.coordinate = location1;
    point1.title = @"Culiacan";
    [self.map addAnnotation:point1];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    CLLocationCoordinate2D location;
    
    location.latitude = latitude1;
    location.longitude = longitude1;
    
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(location, 1000, 1000);
    
    [self.map setRegion:viewRegion animated:YES];
    
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

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation

{
    if ([annotation isKindOfClass:[MKUserLocation class]])
    {
        return nil;
    }
    
    static  NSString *identifier = @"MyAnnotation";
    
    MKPinAnnotationView * annotationView = (MKPinAnnotationView*)[self.map dequeueReusableAnnotationViewWithIdentifier:identifier];
    if (!annotationView)
    {
        annotationView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:identifier];
        annotationView.pinColor = MKPinAnnotationColorPurple;
        annotationView.animatesDrop = YES;
        annotationView.canShowCallout = YES;
    }
    else
    {
        annotationView.annotation = annotation;
    }
    
    annotationView.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    
    return annotationView;
}
@end
