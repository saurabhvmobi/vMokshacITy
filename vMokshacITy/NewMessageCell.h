//
//  NewMessageCell.h
//  vMokshacITy
//
//  Created by Saurabh Suman on 14/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewMessageCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIView *alphaView;
@property (weak, nonatomic) IBOutlet UIImageView *imgLeft;
@property (weak, nonatomic) IBOutlet UIImageView *imgRight;
@property (weak, nonatomic) IBOutlet UILabel *labText;
@property (weak, nonatomic) IBOutlet UIImageView *imgcontner;
@property (weak, nonatomic) IBOutlet UIView *bugView;
@property (weak, nonatomic) IBOutlet UILabel *labBug;

@end
