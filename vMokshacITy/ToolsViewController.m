//
//  ToolsViewController.m
//  vMokshacITy
//
//  Created by Saurabh Suman on 09/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import "ToolsViewController.h"

@interface ToolsViewController ()

{

    NSArray *tableData;

    NSArray *imgtbldata;
}

@end

@implementation ToolsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.


    tableData =@[@"Lync Connection Checker",@"Days Left for Password expiry",@"Survey"];

    imgtbldata=@[@"LyncToolsIcon",@"PasswordResetToolImage",@"SurveyToolIcon"];

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
    
    UIImageView *img=(UIImageView *)[cell viewWithTag:100];
    img.image = [UIImage imageNamed:imgtbldata[indexPath.row]];
    
    
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44;
}












-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    if (indexPath.row==0) {
        [self performSegueWithIdentifier:@"LyncCheckersegue" sender:self];
    }


    if (indexPath.row==1) {
        [self performSegueWithIdentifier:@"PasswordExp" sender:self];
    }
    
    if (indexPath.row==2) {
        [self performSegueWithIdentifier:@"surveySegu" sender:self];
    }
    

    
}























@end
