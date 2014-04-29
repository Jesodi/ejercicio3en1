//
//  SecondViewController.m
//  examenFinal
//
//  Created by Jesus Sainz on 28/04/14.
//  Copyright (c) 2014 SmartPlace. All rights reserved.
//

#import "SecondViewController.h"
#import "celdaSeason.h"
#import "AppDelegate.h"


@interface SecondViewController (){
     NSArray *arraySeason;
     NSString *seleccionado;
     NSString *rutavideo;
     NSString *rutavideo1;
     NSString *rutavideo2;
     NSString *rutavideo3;
    //MPMoviePlayerController *mpc;
     UIWebView *video;
}

@end

@implementation SecondViewController

/*-(IBAction)playVideo{
    //NSString *stringPath= [[NSBundle mainBundle]pathForResource:@"nieve" ofType:@"mov"];
   // NSURL *nieve = [NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"nieve" ofType:@"mov"]];
    //NSURL *nieve = [[NSURL fileURLWithPath:stringPath]];
    //mpc =[[MPMoviePlayerController alloc]initWithContentURL:nieve];
    //[mpc setMovieSourceType: MPMovieSourceTypeFile];
 
    MPMoviePlayerViewController *playercontroller = [[MPMoviePlayerViewController alloc]initWithContentURL:nieve];
    playercontroller.moviePlayer.movieSourceType = MPMovieSourceTypeFile;
    [playercontroller.moviePlayer play];
    [playercontroller release];
    playercontroller = nil;
}*/

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    arraySeason = [[NSArray alloc] initWithObjects:@"Primavera",@"Verano",@"Otoño",@"Invierno",nil];
    
    rutavideo = @"<iframe width=\"560\" height=\"315\" src=\"//www.youtube.com/embed/I0nDiE5tLlY\" frameborder=\"0\" allowfullscreen></iframe>";
  rutavideo = @"<iframe width=\"420\" height=\"315\" src=\"//www.youtube.com/embed/JnFbEmfRIk4\" frameborder=\"0\" allowfullscreen></iframe>";
    rutavideo1 = @"<iframe width=\"420\" height=\"315\" src=\"//www.youtube.com/embed/qJJFGz8O69U\" frameborder=\"0\" allowfullscreen></iframe>";
    rutavideo2 = @"<iframe width=\"265\" height=\"240\" src=\"//www.youtube.com/embed/2heSyjdPV3A\" frameborder=\"0\" allowfullscreen></iframe>";
    rutavideo3 = @"<iframe width=\"265\" height=\"240\" src=\"//www.youtube.com/embed/moSFlvxnbgk\" frameborder=\"0\" allowfullscreen></iframe>";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //return arraImg.count;
    return 4;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    celdaSeason *cell;
    static NSString *CellIdentifier = @"celda";
    
    cell = (celdaSeason *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {  
        cell = [[celdaSeason alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:CellIdentifier];
    }
    cell.label.text = arraySeason[[indexPath row]];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.row==0){
        //[[self video]loadHTMLString:rutavideo baseURL:nil];
        //[videoView removeFromSuperview];
        [self embedYouTube:@"http://www.youtube.com/watch?v=moSFlvxnbgk" frame:CGRectMake(10, 300, 300, 150)];
    }else if(indexPath.row==1){
        //[[self video]loadHTMLString:rutavideo1 baseURL:nil];
        [self embedYouTube:@"http://www.youtube.com/watch?v=20gAH1RBtc8" frame:CGRectMake(10, 300, 300, 150)];
    }else if(indexPath.row==2){
        [self embedYouTube:@"http://www.youtube.com/watch?v=D-qRUOuMlcI" frame:CGRectMake(10, 300, 300, 150)];
        //[[self video]loadHTMLString:rutavideo2 baseURL:nil];
    }else if(indexPath.row==3){
        [[self video]loadHTMLString:rutavideo3 baseURL:nil];
          [self embedYouTube:@"http://www.youtube.com/watch?v=b3dmRph1mJY" frame:CGRectMake(10, 300, 300, 150)];
    }

}

- (void)embedYouTube:(NSString *)urlString frame:(CGRect)frame {
    NSString *embedHTML = @"\
    <html><head>\
    <style type=\"text/css\">\
    body {\
    background-color: transparent;\
    color: white;\
    }\
    </style>\
    </head><body style=\"margin:0\">\
    <iframe id=\"yt\" src=\"%@\" \
    width=\"%0.0f\" height=\"%0.0f\"></iframe>\
    </body></html>";
    NSString *html = [NSString stringWithFormat:embedHTML, urlString, frame.size.width, frame.size.height];
    video = [[UIWebView alloc] initWithFrame:frame];
    [video loadHTMLString:html baseURL:nil];
    [self.view addSubview:video];
    
}
@end
