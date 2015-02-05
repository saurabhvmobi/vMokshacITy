//
//  myTicOrdViewController.m
//  vMokshacITy
//
//  Created by Saurabh Suman on 16/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import "myTicOrdViewController.h"



@interface myTicOrdViewController ()
{
    NSMutableArray *tableData;

    NSInteger selectedrow;

}
@end

@implementation myTicOrdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  
    tableData=[[NSMutableArray alloc]init];

    
    if ([_strDFF isEqualToString:@"placeOrder"]) {
        [self myOrder];
    }
    else
    {
    [self myTicketData];
    
    }
    
    
    
    
    [_tableView reloadData];
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

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    
    
    if ([_strDFF isEqualToString:@"placeOrder"]) {
        self.navigationItem.title = @"My Order";
        
    }
    else
    {
        self.navigationItem.title = @"My Ticket";
    }
    
    
}








-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return 1;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [tableData count];
    
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 63;
}



-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *cellidentifier=@"cell";
    
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellidentifier];
    
    MyTicketDataModel *ticket = tableData[indexPath.row];
    
    
    UILabel *labservice=(UILabel *)[cell viewWithTag:101];
    labservice.text =ticket.serviceType;
    
    
    
    UILabel *labagent=(UILabel *)[cell viewWithTag:102];
    labagent.text= ticket.agent;
    
    
    UILabel *labnum=(UILabel *)[cell viewWithTag:103];
    labnum.text= ticket.ticNum;
    
    
    UILabel *labstatus=(UILabel *)[cell viewWithTag:104];
    labstatus.text= ticket.status;
    
    UILabel *labtimest=(UILabel *)[cell viewWithTag:105];
    labtimest.text= ticket.timestamp;
    
    
    
    
    
    UIView *bgColorView = [[UIView alloc]init];
    bgColorView.backgroundColor = [self barColorForIndex:selectedrow];
    [cell setSelectedBackgroundView:bgColorView];

    
    
    
    return cell;
}

-(void)myTicketData
{

    MyTicketDataModel *ticket = [[MyTicketDataModel alloc] init];
    ticket.serviceType = @"Identity Service";
    ticket.agent = @"Jonathan";
    ticket.ticNum=@"#12345";
    ticket.status = @"New";
    ticket.date =@"25/12/1820";
    ticket.timestamp=@"4 h";
    ticket.serviceDetail=@"Please install the VPN software on my laptop. Please enable it ASAP.";
    [tableData addObject:ticket];
    
    
    ticket = [[MyTicketDataModel alloc] init];
    ticket.serviceType = @"Identity Service";
    ticket.agent = @"Jonathan";
      ticket.timestamp=@"4 h";
    ticket.status = @"New";
    ticket.date =@"25/12/1820";
     ticket.ticNum=@"#12345";
    
    ticket.serviceDetail=@"Please install the VPN software on my laptop. Please enable it ASAP.";
    [tableData addObject:ticket];
    
    ticket = [[MyTicketDataModel alloc] init];
    ticket.serviceType = @"Identity Service";
    ticket.agent = @"Jonathan";
     ticket.ticNum=@"#12345";
    ticket.status = @"New";
    ticket.date =@"25/12/1820";
     ticket.timestamp=@"4 h";
    ticket.serviceDetail=@"Please install the VPN software on my laptop. Please enable it ASAP.";
    [tableData addObject:ticket];
    

}


-(void)myOrder
{
    MyTicketDataModel *ticket = [[MyTicketDataModel alloc] init];
    ticket.serviceType = @"i Phone";
    ticket.agent = @"Jonathan";
      ticket.timestamp=@"4 h";
    ticket.status = @"New";
    ticket.date =@"25/12/1820";
     ticket.ticNum=@"#12345";
    
    ticket.serviceDetail=@"Please install the VPN software on my laptop. Please enable it ASAP.";
    [tableData addObject:ticket];
    
    ticket = [[MyTicketDataModel alloc] init];
    ticket.serviceType = @"Ipad";
    ticket.agent = @"Jonathan";
      ticket.timestamp=@"4 h";
    ticket.status = @"New";
    ticket.date =@"25/12/1820";
     ticket.ticNum=@"#12345";
    
    ticket.serviceDetail=@"Please install the VPN software on my laptop. Please enable it ASAP.";
    [tableData addObject:ticket];
    
    ticket = [[MyTicketDataModel alloc] init];
    ticket.serviceType = @"Lan Cable";
    ticket.agent = @"Jonathan";
    ticket.timestamp=@"2 d";
    ticket.status = @"New";
    ticket.date =@"25/12/1820";
    ticket.serviceDetail=@"Please install the VPN software on my laptop. Please enable it ASAP.";
    ticket.ticNum=@"#12345";
    [tableData addObject:ticket];
    


}











@end
