//
//  AboutViewController.h
//  vMokshacITy
//
//  Created by Saurabh Suman on 02/02/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BossClass.h"


@interface AboutViewController : BossClass
@property (weak, nonatomic) IBOutlet UIScrollView *scroll;

@property (weak, nonatomic) IBOutlet UIImageView *leftimglogo;
@property (weak, nonatomic) IBOutlet UIImageView *rightimglogo;

@property (weak, nonatomic) IBOutlet UITextView *texttView;
@property (weak, nonatomic) IBOutlet UILabel *leftAvgrating;
@property (weak, nonatomic) IBOutlet UILabel *rightAvgrating;

@property (weak, nonatomic) IBOutlet UILabel *lableftrate;

@property (weak, nonatomic) IBOutlet UILabel *labrightRate;
@property (weak, nonatomic) IBOutlet UIImageView *leftStar;
@property (weak, nonatomic) IBOutlet UIImageView *rightStar;
@property (weak, nonatomic) IBOutlet UILabel *totalCountlable;
@property (weak, nonatomic) IBOutlet UILabel *totallab;
@property (weak, nonatomic) IBOutlet UIButton *clicktoratebutton;
@property (weak, nonatomic) IBOutlet UIView *leftStarView;
@property (weak, nonatomic) IBOutlet UIView *rightStarView;
@property (weak, nonatomic) IBOutlet UIButton *writeReviewButton;
- (IBAction)writeReviewAction:(id)sender;
- (IBAction)clickToRateAction:(id)sender;

@property (weak, nonatomic) IBOutlet UITextView *txtViewForWritingReview;










@end
