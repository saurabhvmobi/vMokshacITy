//
//  MessageViewCell.m
//  vMokshacITy
//
//  Created by Saurabh Suman on 08/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import "MessageViewCell.h"

@implementation MessageViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


-(void)setDataModel:(MessageDataModel *)dataModel
{

    _dataModel=dataModel;
    _messHeading.text=dataModel.messageHeading;

    _messSubject.text=dataModel.messageSubject;


    _messDetail.text=dataModel.messageDetail;
    _messTIme.text=dataModel.messageTime;
}


@end
