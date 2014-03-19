//
//  FirstViewController.h
//  ejercicio_iad
//
//  Created by Jesus Sainz on 17/03/14.
//  Copyright (c) 2014 SmartPlace. All rights reserved.
//

#import "iAd/iAd.h"
#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController <ADBannerViewDelegate>
{
    ADBannerView *adView;
    BOOL bannerIsVisible;
}
@property (strong, nonatomic) IBOutlet UIImageView *image;
@end
