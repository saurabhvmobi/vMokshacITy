//
//  HomeViewController.m
//  vMokshacITy
//
//  Created by Saurabh Suman on 08/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import "HomeViewController.h"

#import "RaiseTicketViewController.h"

#import "myTicOrdViewController.h"

@interface HomeViewController ()
{

    NSArray *arr;
    NSArray *arrimg;

}
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    
    [self.scroll setScrollEnabled:YES];
    [self.scroll setContentSize:CGSizeMake(320, 700)];

    
    
    
    _callview.hidden=YES;
  
    
    arr=@[@"HelpDesk",@"Bangalore",@"chenni"];
    arrimg=@[[UIImage imageNamed:@"call.png"],[UIImage imageNamed:@"call.png"],[UIImage imageNamed:@"call.png"]];


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

    //[self.tabBarController setSelectedIndex:1];
}

- (IBAction)messageAction:(id)sender {
    
    [self.tabBarController setSelectedIndex:1];


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

    _contanerDashBoard.hidden=YES;
    _callview.hidden=NO;



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


    if ([segue.identifier isEqualToString:@"hometomyorder"]) {
        
        myTicOrdViewController *mytic=segue.destinationViewController;
        mytic.strDFF=@"placeOrder";
    
    
    }

}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return [arr count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
NSString *cellidentifier=@"cell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellidentifier];
    cell.textLabel.text=arr[indexPath.row];
    cell.imageView.image=arrimg[indexPath.row];


    return cell;


}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    _callview.hidden=YES;

    _contanerDashBoard.hidden=NO;;

}





@end
