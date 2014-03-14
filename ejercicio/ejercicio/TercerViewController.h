//
//  TercerViewController.h
//  ejercicio
//
//  Created by Jesus Sainz on 13/03/14.
//  Copyright (c) 2014 SmartPlace. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface TercerViewController : UIViewController <UIScrollViewDelegate>
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UIImageView *img1;
@property (strong, nonatomic) IBOutlet UIImageView *img2;
@property (strong, nonatomic) IBOutlet UIImageView *img3;
@property (strong, nonatomic) IBOutlet UIImageView *img4;
@property (strong, nonatomic) IBOutlet UIImageView *img5;
@property (strong, nonatomic) IBOutlet UIImageView *img6;
@property (strong, nonatomic) IBOutlet UIPageControl *pageControl;

@end
