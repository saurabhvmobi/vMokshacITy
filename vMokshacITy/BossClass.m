//
//  BossClass.m
//  vMokshacITy
//
//  Created by Saurabh Suman on 20/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import "BossClass.h"

@interface BossClass ()

@end

@implementation BossClass

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{

    [super viewWillAppear:YES];


    [[self.tabBarController.tabBar.items objectAtIndex:0]setTitle:@"Home"];
    
    [[self.tabBarController.tabBar.items objectAtIndex:1] setTitle:@"Ticket"];
    
    [[self.tabBarController.tabBar.items objectAtIndex:2] setTitle:@"Message"];
    
    [[self.tabBarController.tabBar.items objectAtIndex:3] setTitle:@"Tips"];
    [[self.tabBarController.tabBar.items objectAtIndex:4] setTitle:@"Tools"];


 [[[self.tabBarController.viewControllers objectAtIndex:0] tabBarItem]setFinishedSelectedImage:[UIImage imageNamed:@"Dwelling.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"Dwelling.png"]];
    
    [[[self.tabBarController.viewControllers objectAtIndex:1] tabBarItem]setFinishedSelectedImage:[UIImage imageNamed:@"ticketBlue.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"ticketBlue.png"]];
    
    [[[self.tabBarController.viewControllers objectAtIndex:2] tabBarItem]setFinishedSelectedImage:[UIImage imageNamed:@"Message-1.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"Message-1.png"]];
    
    [[[self.tabBarController.viewControllers objectAtIndex:3] tabBarItem]setFinishedSelectedImage:[UIImage imageNamed:@"tipBlue.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"tipBlue.png"]];
    

    [[[self.tabBarController.viewControllers objectAtIndex:4] tabBarItem]setFinishedSelectedImage:[UIImage imageNamed:@"Spanner.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"Spanner.png"]];
    
   
    
   }
















/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
