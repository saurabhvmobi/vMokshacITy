//
//  TipsViewCell.m
//  vMokshacITy
//
//  Created by Saurabh Suman on 05/02/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import "TipsViewCell.h"

@implementation TipsViewCell

- (void)awakeFromNib {
    // Initialization code


    _alphaView.layer.cornerRadius=15;





}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
