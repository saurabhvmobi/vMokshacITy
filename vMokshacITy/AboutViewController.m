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
    BOOL buttonaction;


}
@end

@implementation AboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.rateView.notSelectedImage = [UIImage imageNamed:@"kermit_empty.png"];
    self.rateView.halfSelectedImage = [UIImage imageNamed:@"kermit_half.png"];
    self.rateView.fullSelectedImage = [UIImage imageNamed:@"kermit_full.png"];
    self.rateView.rating = 0;
    self.rateView.editable = YES;
    self.rateView.maxRating = 5;
    self.rateView.delegate = self;
    
    
    
    
    
    
    [self.scroll setScrollEnabled:YES];
    [self.scroll setContentSize:CGSizeMake(320, 700)];

  
    buttonaction=YES;
    
    
   textviewstr=@"This mobile app was developed in a partnership between Vmoksha Technologies and the UCB ";
    
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

    if (buttonaction==YES) {
          _txtViewForWritingReview.hidden=NO;
    
        buttonaction=NO;
    }
    else
    {
        _txtViewForWritingReview.hidden=YES;;
        buttonaction=YES;
    }
    
  

}

- (IBAction)clickToRateAction:(id)sender {

}

- (IBAction)RateAndReviewSubmitButton:(id)sender {

UIAlertView *alt=[[UIAlertView alloc]initWithTitle:@"!!!! Thanks  !!!!" message:@"Thanks for Giving Rating" delegate:self cancelButtonTitle:@"ok" otherButtonTitles: nil];
    [alt show];
    
}

- (void)rateView:(RateView *)rateView ratingDidChange:(float)rating {
    self.labrightRate.text = [NSString stringWithFormat:@"%f", rating];
}











@end
