//
//  SettingViewController.m
//  vMokshacITy
//
//  Created by Saurabh Suman on 09/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import "SettingViewController.h"
#import "LanLocTheViewController.h"


@interface SettingViewController ()
{

    NSArray *tableData;

    NSArray *tableimg;

    NSInteger selectedRow;
}
@end

@implementation SettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.


    tableData=@[@"Language",@"Location",@"Theme"];
    tableimg=@[@"lacation",@"language",@"themes"];
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
      lab.highlightedTextColor=[UIColor whiteColor];
    
    UIImageView *img=(UIImageView *)[cell viewWithTag:100];
    img.image = [UIImage imageNamed:tableimg[indexPath.row]];
    
    
    
    UIView *bgColorView = [[UIView alloc] init];
    bgColorView.backgroundColor = [self barColorForIndex:selectedRow];
    [cell setSelectedBackgroundView:bgColorView];

    
    
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    }


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44;
}



-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"settingtosettingList"]) {
        
        
        UINavigationController *nav = [segue destinationViewController];
        LanLocTheViewController *LLT=(LanLocTheViewController *)nav.topViewController;
        NSIndexPath *index = [self.tableView indexPathForSelectedRow];
        _selectingsetting =  tableData[index.row];
        LLT.selectedSetting=_selectingsetting;
    
    
    
    }

    
    
    
    
}




@end
