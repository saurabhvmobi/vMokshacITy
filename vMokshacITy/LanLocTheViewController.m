//
//  LanLocTheViewController.m
//  vMokshacITy
//
//  Created by Saurabh Suman on 09/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import "LanLocTheViewController.h"

@interface LanLocTheViewController ()
{
    NSArray *Language;
     NSArray *Location;
     NSArray *Theame;
    
    NSArray *tableData;
}
@end

@implementation LanLocTheViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.


    if ([_selectedSetting isEqualToString:@"Language"]) {
       tableData=@[@"English",@"Dutch",@"German",@"Franch",@"German",@"Spanish",@"Japanese"];
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
    
    return cell;
}




- (IBAction)doneButtonAction:(id)sender {
}

- (IBAction)cancelButtonAction:(id)sender {

    [self dismissViewControllerAnimated:YES completion:nil];


}
@end
