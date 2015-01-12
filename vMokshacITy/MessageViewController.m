//
//  MessageViewController.m
//  vMokshacITy
//
//  Created by Saurabh Suman on 08/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import "MessageViewController.h"

@interface MessageViewController ()

@end

@implementation MessageViewController

{

    NSMutableArray *tableData;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    tableData=[[NSMutableArray alloc]init];
    
    [self setupdata];

    [self.tableView reloadData];

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

    MessageViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellidentifier];
    
    cell.dataModel=tableData[indexPath.row];
    
    
    
    return cell;
}

-(void)setupdata
{
    

    
    MessageDataModel *dataModel=[[MessageDataModel alloc]init];
    dataModel.messageHeading=@"Infra";
    dataModel.messageSubject=@"This mail is being sent to all employees on behalf of ISMS Team";
    dataModel.messageDetail=@"Dear all, \nThis email is the second part of an Employee Awareness Program about Information Security in preparation for our ISO 27001 External Audit. Please read carefully some important Employee responsibilities and organization policies. The Ucb Security Policy, Confidentiality, Access and Physical security policies have been sent in yesterday’s email.";
    dataModel.messageTime=@"1 h";
    dataModel.messageDate=@"Thu, Dec 11 , 2014";
    [tableData addObject:dataModel];

    dataModel=[[MessageDataModel alloc]init];
    dataModel.messageHeading=@"Payroll";
    dataModel.messageSubject=@"Greetings from UCB Payroll Help Desk";
    dataModel.messageDetail=@"We are happy to inform you that UCB Payroll Help Desk is available online and here is useful information on how to access and utilize the facility",
    dataModel.messageTime=@"2 h";
    dataModel.messageDate=@"Mon Dec 8, 2014";
    [tableData addObject:dataModel];



    dataModel=[[MessageDataModel alloc]init];
    dataModel.messageHeading=@"Helpdesk";
    dataModel.messageSubject=@"SVN Credentials";
    dataModel.messageDetail=@"Dear All,\nThis is to inform all the employees that the policy on “Official Dress Code” under Dress Code is being revised effective on Mon December 01, 2014.Dress code for external customer meetings will be Business Formals (to create the winning impression!!!). Business Formals will include - salwar suits and sarees, western formal skirts / trousers for ladies. Full/ half sleeved light-coloured shirts with tie and (jacket / coat optional) formal trousers for gentlemen. Footwear must be formal leather-shoes for men.Monday and Tuesday are considered as Business days and dress code will be Business formals. Business formals will include salwar suits and western skirts / trousers for ladies. Full/ half sleeved shirts tucked in and trousers for gentlemen. For men footwear must be formal shoes.";
    dataModel.messageTime=@"3 h";
    dataModel.messageDate=@"Thu Nov 27, 2014";
    [tableData addObject:dataModel];
    


    dataModel=[[MessageDataModel alloc]init];
    dataModel.messageHeading=@"HR policy:";
    dataModel.messageSubject=@"Employee Awareness: ";
    dataModel.messageDetail=@"Dear All,\nThis is to inform all the employees that the policy on “Official Dress Code” under Dress Code is being revised effective on Mon December 01, 2014.Dress code for external customer meetings will be Business Formals (to create the winning impression!!!). Business Formals will include - salwar suits and sarees, western formal skirts / trousers for ladies. Full/ half sleeved light-coloured shirts with tie and (jacket / coat optional) formal trousers for gentlemen. Footwear must be formal leather-shoes for men.Monday and Tuesday are considered as Business days and dress code will be Business formals. Business formals will include salwar suits and western skirts / trousers for ladies. Full/ half sleeved shirts tucked in and trousers for gentlemen. For men footwear must be formal shoes.";
    dataModel.messageTime=@"5 h";
    dataModel.messageDate=@"Mon Nov 17, 2014";
    [tableData addObject:dataModel];
    



    dataModel=[[MessageDataModel alloc]init];
    dataModel.messageHeading=@"HR: Holiday Celebration: ";
    dataModel.messageSubject=@"Merry Christmas & A Happy New Year 2015!!!";
    dataModel.messageDetail=@"Dear All,\nThis is to inform all the employees that the policy on “Official Dress Code” under Dress Code is being revised effective on Mon December 01, 2014.Dress code for external customer meetings will be Business Formals (to create the winning impression!!!). Business Formals will include - salwar suits and sarees, western formal skirts / trousers for ladies. Full/ half sleeved light-coloured shirts with tie and (jacket / coat optional) formal trousers for gentlemen. Footwear must be formal leather-shoes for men.Monday and Tuesday are considered as Business days and dress code will be Business formals. Business formals will include salwar suits and western skirts / trousers for ladies. Full/ half sleeved shirts tucked in and trousers for gentlemen. For men footwear must be formal shoes.";
    dataModel.messageTime=@"2 d";
    dataModel.messageDate=@"Fri Dec 12, 2014";
    [tableData addObject:dataModel];
    


    dataModel=[[MessageDataModel alloc]init];
    dataModel.messageHeading=@"IS: Maintenance Activity";
    dataModel.messageSubject=@"IS Maintenance Activity on 26.07.2014";
    dataModel.messageDetail=@"Dear All,\nThis is to inform all the employees that the policy on “Official Dress Code” under Dress Code is being revised effective on Mon December 01, 2014.Dress code for external customer meetings will be Business Formals (to create the winning impression!!!). Business Formals will include - salwar suits and sarees, western formal skirts / trousers for ladies. Full/ half sleeved light-coloured shirts with tie and (jacket / coat optional) formal trousers for gentlemen. Footwear must be formal leather-shoes for men.Monday and Tuesday are considered as Business days and dress code will be Business formals. Business formals will include salwar suits and western skirts / trousers for ladies. Full/ half sleeved shirts tucked in and trousers for gentlemen. For men footwear must be formal shoes.";
    dataModel.messageTime=@"6 d";
    dataModel.messageDate=@"Fri Jul 25, 2014";
    [tableData addObject:dataModel];
    






}










@end
