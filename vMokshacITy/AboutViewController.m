//
//  AboutViewController.m
//  vMokshacITy
//
//  Created by Saurabh Suman on 02/02/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()
{

    NSString *textviewstr;



}
@end

@implementation AboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    [self.scroll setScrollEnabled:YES];
    [self.scroll setContentSize:CGSizeMake(320, 700)];


textviewstr=@"This mobile app was developed in a partnership between Vmoksha Technologies and the UCB Mobility Team.  If you have an idea for a new app, or questions about app development, please contact the UCB Mobility Team at mobility.apple@ucb.com and we will schedule a meeting to understand your needs.  For more information, see www.vmokshagroup.com.";
    
    _texttView.text=textviewstr;
  self.navigationItem.title=@"About";

    _txtViewForWritingReview.hidden=YES;

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

- (IBAction)writeReviewAction:(id)sender {

   _txtViewForWritingReview.hidden=NO;

}

- (IBAction)clickToRateAction:(id)sender {
}
@end
