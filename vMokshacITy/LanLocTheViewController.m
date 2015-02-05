//
//  LanLocTheViewController.m
//  vMokshacITy
//
//  Created by Saurabh Suman on 09/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import "LanLocTheViewController.h"
#define LANGUAGE @"{\"request\":{\"Name\":\"\",\"GenericSearchViewModel\":{\"Name\":\"\"}}}"


@interface LanLocTheViewController ()
{
    NSArray *Language;
     NSArray *Location;
     NSArray *Theame;
    
    NSMutableArray *tableData;

    NSInteger selectedRow;
    }
@end

@implementation LanLocTheViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.


    if ([_selectedSetting isEqualToString:@"Language"]) {
      // tableData=@[@"English",@"Dutch",@"German",@"Franch",@"German",@"Spanish",@"Japanese"];
    
        [self getDataFrmoWeb];
    
    }
    
    
    
    else if ([_selectedSetting isEqualToString:@"Location"])
        
    {
    tableData= @[@"Belgium",@"India",@"US",@"Japan",@"Bulgaria",@"France",@"Germany"];
    }
    
    else
    {
        
      tableData=@[@"Blue Ocean",@"Orange Hue",@"Pink Rose",@"Green Glow"];
        
    }
    

    
    [_tableView reloadData];

}


-(void)viewWillAppear:(BOOL)animated
{

    [super viewWillAppear:animated];






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
    
    
    UILabel *lab=(UILabel *)[cell viewWithTag:100];
    
    lab.text=tableData[indexPath.row];
    
    UIView *bgColorView = [[UIView alloc] init];
    bgColorView.backgroundColor = [self barColorForIndex:selectedRow];
    [cell setSelectedBackgroundView:bgColorView];
    
   return cell;

}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    }

- (IBAction)doneButtonAction:(id)sender {
    
    
    if([_selectedSetting isEqualToString:@"Theme"]){
        
        selectedRow= [self.tableView indexPathForSelectedRow].row;
    
        
        [[ NSUserDefaults standardUserDefaults] setInteger:selectedRow forKey:@"BackgroundTheme"];
        
        
        [[UITabBar appearance] setBarTintColor:[self barColorForIndex:selectedRow]];
        [[UINavigationBar appearance] setBarTintColor:[self barColorForIndex:selectedRow]];

    }

    
       // [self.delegate selectedThemeIs:arrOfThemesData[selectedRow]];
   
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44;
}












- (IBAction)cancelButtonAction:(id)sender {

    [self dismissViewControllerAnimated:YES completion:nil];


}


-(void)getDataFrmoWeb
{
    NSString *urlstr=[NSString stringWithFormat:@"http://simplicitytst.ripple-io.in/Search/Language"];

    
    AFHTTPRequestOperationManager  *manage = [AFHTTPRequestOperationManager manager];
    AFJSONRequestSerializer *requestSerializer = [AFJSONRequestSerializer serializer];
    
    [requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    manage.requestSerializer = requestSerializer;
    
    
    NSDictionary *paraDICt=[NSJSONSerialization JSONObjectWithData:[LANGUAGE dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
    
    [manage POST:urlstr parameters:paraDICt
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
             
             [_tableView reloadData];
             
             
         }
         failure:^(AFHTTPRequestOperation *operation, NSError *error) {
             NSLog(@"%@",error);
         }];
    
    
    
}



    
    





@end
