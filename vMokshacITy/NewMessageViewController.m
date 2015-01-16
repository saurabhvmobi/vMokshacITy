//
//  NewMessageViewController.m
//  vMokshacITy
//
//  Created by Saurabh Suman on 14/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import "NewMessageViewController.h"

#import "NewMessageCell.h"

@interface NewMessageViewController ()

{
    NSArray *arrtext;
      NSArray *arrleftImage;
      NSArray *arrtexrightimaget;

}


@end

@implementation NewMessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

   
    
    
    
    arrtext=@[@"Mobility",@"Service Desk",@"Human Resources",@"Local Site Service",@"other"];

    arrleftImage=@[[UIImage imageNamed:@"mes1"],[UIImage imageNamed:@"mes2"],[UIImage imageNamed:@"mes3"],[UIImage imageNamed:@"mes4"],[UIImage imageNamed:@"mes5"]];
    
    arrtexrightimaget=@[[UIImage imageNamed:@"Email-Closed-Green"],[UIImage imageNamed:@"Email-Opened"],[UIImage imageNamed:@"Email-Closed-Green"],[UIImage imageNamed:@"Email-Opened"],[UIImage imageNamed:@"Email-Closed-Green"],];


    
    


}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];

  


                 
                 
                 

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
    
    return [arrtext count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *cellidentifier=@"cell";
    
    NewMessageCell *cell=[tableView dequeueReusableCellWithIdentifier:cellidentifier];
    
    cell.labText.text =arrtext[indexPath.row];
    cell.imgLeft.image=arrleftImage[indexPath.row];
    
    cell.imgRight.image=arrtexrightimaget[indexPath.row];
    
    
    return cell;
}






@end
