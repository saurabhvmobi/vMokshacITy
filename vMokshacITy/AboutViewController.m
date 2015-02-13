//
//  AboutViewController.m
//  vMokshacITy
//
//  Created by Saurabh Suman on 02/02/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import "AboutViewController.h"

#define ABOUT_US_ALERT_MESSAGE @"Thanks for Giving Rating"
#define ABOUT_US_ALERT_ALERT @"!! Thank you!!"
#define ABOUT_PAERAMETER @"{\"request\":{\"LanguageCode\":\"\"}}"




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
    
    self.navigationItem.title=@"About";

    _txtViewForWritingReview.hidden=YES;

    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    

    [self getdataFromWeb];

 
    
    

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

UIAlertView *alt=[[UIAlertView alloc]initWithTitle:ABOUT_US_ALERT_ALERT message:ABOUT_US_ALERT_MESSAGE delegate:self cancelButtonTitle:@"ok" otherButtonTitles: nil];
    [alt show];
    
}

- (void)rateView:(RateView *)rateView ratingDidChange:(float)rating {
    self.labrightRate.text = [NSString stringWithFormat:@"%f", rating];
}



-(void)getdataFromWeb
{
    AFHTTPRequestOperationManager *manager;
    manager=[AFHTTPRequestOperationManager manager];
    
    NSString *urlstring=[NSString stringWithFormat:@"http://simplicitytst.ripple-io.in/Search/AboutUs"];
    
    
    
    AFJSONRequestSerializer *serilizer=[AFJSONRequestSerializer serializer];
    
     [serilizer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
     [serilizer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
   
    
    manager.requestSerializer=serilizer;
    
    NSDictionary *parsDict=[NSJSONSerialization JSONObjectWithData:[ABOUT_PAERAMETER dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];


[manager POST:urlstring parameters:parsDict
 
      success: ^ (AFHTTPRequestOperation *operationque,NSData *mainData)
    {
        NSData *responseData=[operationque responseData];
        NSDictionary *mainDict=[NSJSONSerialization JSONObjectWithData:responseData options:kNilOptions error:nil];
        
        NSArray *mainarr=mainDict[@"aaData"][@"AboutUs"];
    
        for (NSDictionary *adict in mainarr) {
           
            BOOL states =[adict[@"Status"]boolValue];
            
            
            if (states==true) {
               textviewstr=adict[@"Description"];
                
                NSLog(@"%@",textviewstr);
                _texttView.text=textviewstr;
        
            
            }
            
            [MBProgressHUD hideAllHUDsForView:self.view animated:YES];
       
        
        
        }
        
        
        
        
    
    }
 
 
 
 
      failure:^(AFHTTPRequestOperation *operation,NSError *error)
 
    {
    
    
        NSLog(@"%@",error);
    
    }
 
 ];



}







@end
