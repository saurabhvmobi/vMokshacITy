//
//  HomeViewController.m
//  vMokshacITy
//
//  Created by Saurabh Suman on 08/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import "HomeViewController.h"

#import "RaiseTicketViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

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


// self.navigationController.navigationBarHidden=YES;

}







/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)raiseTicketAction:(id)sender {

    [self.tabBarController setSelectedIndex:1];
}

- (IBAction)messageAction:(id)sender {
    
    [self.tabBarController setSelectedIndex:2];


}

- (IBAction)myTicketAction:(id)sender {
}

- (IBAction)tipsAction:(id)sender {

    
    [self.tabBarController setSelectedIndex:3];

}

- (IBAction)PlacrOrderAction:(id)sender {



}

- (IBAction)myOrderAction:(id)sender {
}

- (IBAction)settingAction:(id)sender {
}

- (IBAction)callHelpDeskAction:(id)sender {
}

- (IBAction)webClipAction:(id)sender {
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:@"HomeToOrder"]) {
        
    
//    
//        UINavigationController *nav = [segue destinationViewController];
//       RaiseTicketViewController *RAIS=(RaiseTicketViewController *)nav.topViewController;
       
        
        RaiseTicketViewController *RAIS=segue.destinationViewController;
        RAIS.strDFF=@"placeOrder";
        
   
}

}




@end
