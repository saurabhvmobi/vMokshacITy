//
//  RaiseTicketViewController.m
//  vMokshacITy
//
//  Created by Saurabh Suman on 09/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import "RaiseTicketViewController.h"

@interface RaiseTicketViewController ()
{
 

    NSArray *dataTable;
}
@end

@implementation RaiseTicketViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

   
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
    return 4;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    if (section==0) {
        return 1;
    }

    else if (section==1) {
        return 1;
    }
    else if (section==2) {
        return 1;
    }

    else
        return 1;
    

   
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    

    UITableViewCell *cell = nil;
    
    
    if (indexPath.section==0) {
        cell=[tableView dequeueReusableCellWithIdentifier:@"firstcell" forIndexPath:indexPath];
    }
    
    else if(indexPath.section==1)
    {
        cell =[tableView dequeueReusableCellWithIdentifier:@"secondcell" forIndexPath:indexPath];
    }
    else if(indexPath.section==2)
    {
     cell =[tableView dequeueReusableCellWithIdentifier:@"thirdcell" forIndexPath:indexPath];
    
    }
    else
    {
    cell =[tableView dequeueReusableCellWithIdentifier:@"fourth" forIndexPath:indexPath];
    }
   
    
    
    
    
    
    if (indexPath.section==0) {
        UILabel *lableft=(UILabel *)[cell viewWithTag:100];
        lableft.text=@"Requester";
    
        UILabel *labright=(UILabel *)[cell viewWithTag:101];
        labright.text=@"Jim Kolhar";

    
    }
    
    if (indexPath.section==1) {
        UILabel *impact=(UILabel *)[cell viewWithTag:200];
        impact.text=@"Impact";
        
        UILabel *low=(UILabel *)[cell viewWithTag:201];
        low.text=@"Low";

        UILabel *medium=(UILabel *)[cell viewWithTag:202];
        medium.text=@"Medium";
        
        UILabel *high=(UILabel *)[cell viewWithTag:203];
        high.text=@"High";
        

        
        UILabel *critical=(UILabel *)[cell viewWithTag:204];
        critical.text=@"Critical";
        

    
    
    }
    
    
    
    
    
    
    
    return cell;
   
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0,tableView.bounds.size.width, 30)];
    
    UILabel *labelHeader = [[UILabel alloc] initWithFrame:CGRectMake (17,4,320,30)];
  
    labelHeader.textColor = [UIColor blackColor];
    [headerView addSubview:labelHeader];
    
    
    if (section == 0||section==1)
    {
        
    }else if (section == 2)
    {
     labelHeader.text=@"Select Services";
    }
    else
    {
        labelHeader.text = @"Details";
    }
    
    return headerView;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section

{
   
    if (section==0||section==1) {
        return 0;
    }
    
    
    return 44.00;
}






@end
