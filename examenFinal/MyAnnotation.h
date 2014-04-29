//
//  MyAnnotation.h
//  examenFinal
//
//  Created by Jesus Sainz on 29/04/14.
//  Copyright (c) 2014 SmartPlace. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MyAnnotation : NSObject <MKAnnotation>

@property (nonatomic, copy) NSString *title;
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

-(id) initWithCoordinate:(CLLocationCoordinate2D)coordinate title:(NSString *)title;
//- (id)initWithTitle:(NSString *)Title subtitle:(NSString*)Subtitle andCoordinate:(CLLocationCoordinate2D)Coord;

@end
