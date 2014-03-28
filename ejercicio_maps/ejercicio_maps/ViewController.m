//
//  ViewController.m
//  ejercicio_maps
//
//  Created by Jesus Sainz on 26/03/14.
//  Copyright (c) 2014 SmartPlace. All rights reserved.
//

#import "ViewController.h"
#import "celda_lugares.h"
#import "AppDelegate.h"
#import "Map_ViewController.h"
#import "AppDelegate.h"


@interface ViewController (){
    NSArray *imagesArray;
    NSMutableArray *array;
    NSString *texto;
    
}

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
     nomArray = [[NSArray alloc] initWithObjects:@"H.Cabañas",
                 @"Omnilife",@"Catedral",@"Teatro Degollado",@"Colomos",nil];
    imagesArray=[[NSArray alloc]initWithObjects:@"Hospicio_cabanas.jpg",@"omnilife.jpg",@"Catedral.jpg",@"TeatroDegollado.jpg"
                 ,@"colomos.jpg",nil];
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
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 95;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //NSLog(@"entro");
    celda_lugares *cell;
    static NSString *CellIdentifier = @"celda_lugares";
    
    cell = (celda_lugares *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[celda_lugares alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:CellIdentifier];
    }
    
    
    cell.nom_lugar.text = nomArray[[indexPath row]];
    cell.img_lugar.image = [UIImage imageNamed:imagesArray[[indexPath row]]];
    
    return cell;
    
}

#pragma mark UITableViewDelegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    //NSLog(@"texto: %@", array[indexPath.row]);
    
    texto=nomArray[indexPath.row];
    NSLog(@"texto: %@", texto);
    
    [self performSegueWithIdentifier:@"Map_ViewController" sender:texto];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([segue.identifier isEqualToString:@"Map_ViewController"]){
        
        Map_ViewController *map=segue.destinationViewController;
        map.nombre1=texto;
        
    }
}




@end
