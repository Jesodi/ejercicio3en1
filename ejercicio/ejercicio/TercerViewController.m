//
//  TercerViewController.m
//  ejercicio
//
//  Created by Jesus Sainz on 13/03/14.
//  Copyright (c) 2014 SmartPlace. All rights reserved.
//

#import "TercerViewController.h"

@interface TercerViewController ()

@end

@implementation TercerViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
        self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width * 6,self.scrollView.frame.size.height);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -UIScrollView Delegate{
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    CGFloat pageWidth = self.scrollView.frame.size.width;
    int page = floor((self.scrollView.contentOffset.x - pageWidth/2)/pageWidth)+1;
    self.pageControl.currentPage = page;
    NSLog(@"page = %d",page);
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
