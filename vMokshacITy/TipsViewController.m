//
//  TipsViewController.m
//  vMokshacITy
//
//  Created by Saurabh Suman on 12/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import "TipsViewController.h"

#define TIPS_PARAMETER @"{\"request\":{\"Name\":\"\",\"GenericSearchViewModel\":{\"Name\":\"\"}}}"




@interface TipsViewController ()
{
    NSMutableArray *tableData;
    
    
}

@end



@implementation TipsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

      [self getData];



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
    
    
    UILabel *lab=(UILabel *)[cell viewWithTag:101];
    lab.text=tableData[indexPath.row];
    
    
    
    
    
    return cell;
}


-(void)getData
{
    NSString *str=[NSString stringWithFormat:@"http://simplicitytst.ripple-io.in/Search/TipsGroup"];
    
    
    
  AFHTTPRequestOperationManager  *manage = [AFHTTPRequestOperationManager manager];
    AFJSONRequestSerializer *requestSerializer = [AFJSONRequestSerializer serializer];
    
    [requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    manage.requestSerializer = requestSerializer;
    
    
    NSDictionary *paraDICt=[NSJSONSerialization JSONObjectWithData:[TIPS_PARAMETER dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
    
    [manage POST:str parameters:paraDICt
         success:^(AFHTTPRequestOperation *operation, id responseObject){
             NSData *responseData = [operation responseData];
             //  NSLog(@"%@",responseData);
             
             NSDictionary *mainDict=[NSJSONSerialization JSONObjectWithData:responseData options:kNilOptions error:nil];
             // NSLog(@"%@",mainDict);
             NSArray *mainarr=mainDict[@"aaData"][@"GenericSearchViewModels"];
           
             tableData=[[NSMutableArray alloc]init];
             
             for (NSDictionary *adict in mainarr) {
                 
                 
                 NSString *str=adict[@"Name"];
                 NSLog(@"%@",str);
                 [tableData addObject:str];
             
             }
             
             [_tableVIew reloadData];
             
             
         }
         failure:^(AFHTTPRequestOperation *operation, NSError *error) {
             NSLog(@"%@",error);
         }];
    


}





@end
