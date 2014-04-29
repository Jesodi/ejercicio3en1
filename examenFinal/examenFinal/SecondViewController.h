//
//  SecondViewController.h
//  examenFinal
//
//  Created by Jesus Sainz on 28/04/14.
//  Copyright (c) 2014 SmartPlace. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface SecondViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UIWebView *video;

//-(IBAction)playVideo;

@end
