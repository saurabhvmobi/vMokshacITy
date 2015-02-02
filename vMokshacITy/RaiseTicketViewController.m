//
//  RaiseTicketViewController.m
//  vMokshacITy
//
//  Created by Saurabh Suman on 09/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import "RaiseTicketViewController.h"
#import "ServiceOrdViewController.h"


@interface RaiseTicketViewController ()
{
 

    NSArray *dataTable;

    UISlider *sliderOutlet;


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


-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
   
    if ([_strDFF isEqualToString:@"placeOrder"]) {
        self.navigationItem.title = @"Place Order";

    }
    else
    {
    self.navigationItem.title = @"Raise Ticket";
    }
   

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

           return 1;
    

   
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    

    UITableViewCell *cell = nil;
    
    
    if (indexPath.section==0) {
        cell=[tableView dequeueReusableCellWithIdentifier:@"firstcell" forIndexPath:indexPath];
    
    
   
        UILabel *lableft=(UILabel *)[cell viewWithTag:100];
                lableft.text=@"Requester";
        
                UILabel *labright=(UILabel *)[cell viewWithTag:101];
               labright.text=@"Jim Kolhar";
    
    }
    
    else if(indexPath.section==1)
    {
        cell =[tableView dequeueReusableCellWithIdentifier:@"secondcell" forIndexPath:indexPath];
    
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
    else if(indexPath.section==2)
    {
     cell =[tableView dequeueReusableCellWithIdentifier:@"thirdcell" forIndexPath:indexPath];
    
        
        UILabel *lab=(UILabel *)[cell viewWithTag:333];
        
        if ([_strDFF isEqualToString:@"placeOrder"]) {
            lab.text=@"Select items";
            
        }
        else
        {
            lab.text=@"Select a service";

        }
        

        
        
        
        
    }
    else
    {
    cell =[tableView dequeueReusableCellWithIdentifier:@"fourth" forIndexPath:indexPath];
    
        
    
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
        
    }
    
    else if (section == 2)
    {
        
        if ([_strDFF isEqualToString:@"placeOrder"]) {
            labelHeader.text = @"Items";
            
        }
        else
        {
           labelHeader.text = @"Service";
        }
        

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

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section==1) {
        return 70;
    }

   else if (indexPath.section==3)
   {
   
       return 80;
   }
    
    
    
    return 44;
}
- (IBAction)sliderAction:(id)sender {
}
- (IBAction)DoneButtonAction:(id)sender {

    if ([_strDFF isEqualToString:@"placeOrder"]) {
        UIAlertView *alt=[[UIAlertView alloc]initWithTitle:@"Congralutation!!!" message:@"your Order has been Saved" delegate:self cancelButtonTitle:@"ok" otherButtonTitles: nil];
        [alt show];
    }
else
{
    UIAlertView *alt=[[UIAlertView alloc]initWithTitle:@"Congralutation!!!" message:@"your Ticket has been Saved" delegate:self cancelButtonTitle:@"ok" otherButtonTitles: nil];
    [alt show];

}

}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{

  
    if ([_strDFF isEqualToString:@"placeOrder"]) {
        [self performSegueWithIdentifier:@"hometomyorder" sender:nil];
 
    }
    
    else
        
    {
    
    [self performSegueWithIdentifier:@"myTicketList_segue" sender:nil];
    }
    
}

- (IBAction)imapctValueChanged:(UISlider *)sender
{
    sender.value = roundf(sender.value);
}

- (UIImage *)thumbImageForState:(UIControlState)state
{
    NSInteger  ii =sliderOutlet.value;
    UIImage *imk;
    
    switch (ii) {
        case 0:
            imk=[UIImage imageNamed:@"RedCircle"];
            break;
        case 1:
            return[UIImage imageNamed:@"OrangeCircle"];
            break;
        case 2:
            return[UIImage imageNamed:@"greenCirlce"];
            break;
        case 3:
            return[UIImage imageNamed:@"grayCircle"];
            break;
        default:
            break;
    }
    return imk;
    
}





-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([_strDFF isEqualToString:@"placeOrder"]){
        
              UINavigationController *nav = [segue destinationViewController];
               ServiceOrdViewController *SO=(ServiceOrdViewController *)nav.topViewController;
        
        SO.strDIFF=@"placeorder";
        
    }

}






























































@end
