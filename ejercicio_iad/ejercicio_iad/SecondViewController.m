//
//  SecondViewController.m
//  ejercicio_iad
//
//  Created by Jesus Sainz on 17/03/14.
//  Copyright (c) 2014 SmartPlace. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    [self downloadPicture];
    [self downloadPicture2];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)downloadPicture {

    NSURL *imageURL = [NSURL URLWithString:@"http://image.minyanville.com/assets/dailyfeed/uploadimage/093010/apple_1285858292.jpg"];
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        
        NSData *imageData = [NSData dataWithContentsOfURL:imageURL];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            self.imagen.image=[UIImage imageWithData:imageData];
            
            //self.view.layer.contents = (id)[UIImage imageWithData:imageData].CGImage;
            
        });
    });
}

- (void)downloadPicture2 {
    
    NSURL *imageURL = [NSURL URLWithString:@"http://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Tux.svg/512px-Tux.svg.png"];
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        
        NSData *imageData = [NSData dataWithContentsOfURL:imageURL];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            self.imagen2.image=[UIImage imageWithData:imageData];
            
            //self.view.layer.contents = (id)[UIImage imageWithData:imageData].CGImage;
            
        });
    });
}


- (IBAction)refrescar:(id)sender {
    
    [self downloadPicture];
    [self downloadPicture2];
}
@end
