//
//  ServiceOrdViewController.m
//  vMokshacITy
//
//  Created by Saurabh Suman on 16/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import "ServiceOrdViewController.h"

#import "MBProgressHUD.h"


#define ORDER_PARAMETER  @"{\"request\":{\"CategoryTypeCode\":\"ORDER\"}}"
#define TICKETLIST_PARAMETER @"{\"request\":{\"CategoryTypeCode\":\"TICKET\"}}"



@interface ServiceOrdViewController ()

{

    NSMutableArray *tableData;

    AFHTTPRequestOperationManager *manage;


}

@end

@implementation ServiceOrdViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    
   // MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    
      [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    
    
    if ([_strDIFF isEqualToString:@"placeorder"]) {
        [self getdataFromweb]; 
    }
    
    else
    {
        [self getservice];
    
    }
    
    
        
    
    
    
   tableData=[[NSMutableArray alloc]init];

    
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


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return 1;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [tableData count];
    
    
}




-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *cellidentifier=@"cell";
    
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellidentifier];
    
    
    
    MyTicketDataModel *ticket=tableData[indexPath.row];
//    
//    UILabel *lab=(UILabel *)[cell viewWithTag:101];
//    lab.text=ticket.service;
//    
    
    cell.textLabel.text=ticket.service;
    
       return cell;



}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    [self dismissViewControllerAnimated:YES completion:nil];

}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{

    return 44;
}



- (IBAction)cancelButtonAction:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    





}

-(void)getdataFromweb
{

    NSString *str=[NSString stringWithFormat:@"http://simplicitytst.ripple-io.in/Search/Category"];
    
    
    
    manage = [AFHTTPRequestOperationManager manager];
    AFJSONRequestSerializer *requestSerializer = [AFJSONRequestSerializer serializer];
    
    [requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    manage.requestSerializer = requestSerializer;

    
    NSDictionary *paraDICt=[NSJSONSerialization JSONObjectWithData:[ORDER_PARAMETER dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
    
    
        [manage POST:str
       parameters:paraDICt
          success:^(AFHTTPRequestOperation *operation, id responseObject){
              NSData *responseData = [operation responseData];
              
              
            //  NSLog(@"%@",responseData);
              
              NSDictionary *mainDict=[NSJSONSerialization JSONObjectWithData:responseData options:kNilOptions error:nil];
              // NSLog(@"%@",mainDict);
          
              NSArray *arr=mainDict[@"aaData"][@"GenericSearchViewModels"];
              
              [tableData removeAllObjects];
          
            //  NSMutableArray *tempArr=[[NSMutableArray alloc]init];
              for (NSDictionary *adict in arr) {
                  MyTicketDataModel *ticket=[[MyTicketDataModel alloc]init];

                  ticket.service=adict[@"Name"];
                  
                 [tableData addObject:ticket];
              
             
              
              }
              
             
              
              
              [_tableView reloadData];
   
           [MBProgressHUD hideHUDForView:self.view animated:YES];
          
          
          }
          failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                            NSLog(@"%@",error);
          
          
           [MBProgressHUD hideHUDForView:self.view animated:YES];
          
          
          }];



}

-(void)getservice
{

    NSString *str=[NSString stringWithFormat:@"http://simplicitytst.ripple-io.in/Search/Category"];
    
    
    
    manage = [AFHTTPRequestOperationManager manager];
    AFJSONRequestSerializer *requestSerializer = [AFJSONRequestSerializer serializer];
    
    [requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    manage.requestSerializer = requestSerializer;
    
    
    NSDictionary *paraDICt=[NSJSONSerialization JSONObjectWithData:[TICKETLIST_PARAMETER dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
    
    
    [manage POST:str
      parameters:paraDICt
         success:^(AFHTTPRequestOperation *operation, id responseObject){
             NSData *responseData = [operation responseData];
             
             
             
             
             //  NSLog(@"%@",responseData);
             
             NSDictionary *mainDict=[NSJSONSerialization JSONObjectWithData:responseData options:kNilOptions error:nil];
             // NSLog(@"%@",mainDict);
             
             NSArray *arr=mainDict[@"aaData"][@"GenericSearchViewModels"];
             
             [tableData removeAllObjects];
             
             NSMutableArray *tempArr=[[NSMutableArray alloc]init];
             for (NSDictionary *adict in arr) {
                 MyTicketDataModel *ticket=[[MyTicketDataModel alloc]init];
                 
                 ticket.service=adict[@"Name"];
                 
                 [tableData addObject:ticket];
                 
                 }
             
             [_tableView reloadData];
             
              [MBProgressHUD hideHUDForView:self.view animated:YES];
             
             
         }
         failure:^(AFHTTPRequestOperation *operation, NSError *error) {
             NSLog(@"%@",error);
        
            [MBProgressHUD hideHUDForView:self.view animated:YES];
         
         }];
    


}











@end
