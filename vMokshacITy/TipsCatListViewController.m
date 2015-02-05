//
//  TipsCatListViewController.m
//  vMokshacITy
//
//  Created by Saurabh Suman on 05/02/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import "TipsCatListViewController.h"

@interface TipsCatListViewController ()

{

    NSArray *tableData;

    NSInteger selectedrow;
}


@end

@implementation TipsCatListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.


    tableData=@[@"tipsCatlist 1",@"tipsCatlist 1",@"tipsCatlist 1",@"tipsCatlist 1",@"tipsCatlist 1",@"tipsCatlist 1",];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];


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
    bgColorView.backgroundColor = [self barColorForIndex:selectedrow];
    [cell setSelectedBackgroundView:bgColorView];

    
    
    
    
    return cell;

}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    [self dismissViewControllerAnimated:YES completion:nil];

}










@end
