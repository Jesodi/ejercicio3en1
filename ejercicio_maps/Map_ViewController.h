//
//  Map_ViewController.h
//  ejercicio_maps
//
//  Created by Jesus Sainz on 26/03/14.
//  Copyright (c) 2014 SmartPlace. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface Map_ViewController : UIViewController <MKMapViewDelegate>
@property (strong, nonatomic) IBOutlet MKMapView *mapa;



@property (strong,nonatomic)NSString *nombre1;

//-(id) initWithCoordinate:(CLLocationCoordinate2D)coordinate title:(NSString *)title;
//- (id)initWithTitle:(NSString *)Title subtitle:(NSString*)Subtitle andCoordinate:(CLLocationCoordinate2D)Coord;
@end
