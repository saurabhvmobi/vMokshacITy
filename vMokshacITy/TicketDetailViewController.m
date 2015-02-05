//
//  TicketDetailViewController.m
//  vMokshacITy
//
//  Created by Saurabh Suman on 19/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import "TicketDetailViewController.h"

@interface TicketDetailViewController ()
{
    NSArray *leftArray;
    NSInteger selectedrow;

}

@end

@implementation TicketDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.


    leftArray=@[@"Requester",@"Impact",@"Agent",@"Status",@"Date"];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    if (section==0) {
        return 5;
        
    }
else if (section==1)
{
    return 1;
}
else
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   
    NSString *cellidentifier=@"cell";
    UITableViewCell *cell=nil;
    cell=[tableView dequeueReusableCellWithIdentifier:cellidentifier];
    
    
    if (indexPath.section==0) {
        UILabel *leftlab=(UILabel *)[cell viewWithTag:100];
        leftlab.text=leftArray[indexPath.row];
    }
    
    
    
    UIView *bgColorView = [[UIView alloc]init];
    bgColorView.backgroundColor = [self barColorForIndex:selectedrow];
    [cell setSelectedBackgroundView:bgColorView];
    

    
    

    return cell;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0,tableView.bounds.size.width, 30)];
    
    UILabel *labelHeader = [[UILabel alloc] initWithFrame:CGRectMake (17,4,320,30)];
    
    labelHeader.textColor = [UIColor blackColor];
    [headerView addSubview:labelHeader];
    
    
    if (section==1) {
        labelHeader.text=@"services";
    }
    
   else if (section==2)
   {
       labelHeader.text=@"Details";

   }
    
    return headerView;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section

{
    
    if (section==0) {
        return 0;
    }
    
    
    return 44.00;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (indexPath.section==2) {
        return 80;
    }
    return 44;
}




@end
