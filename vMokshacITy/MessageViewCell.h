//
//  MessageViewCell.h
//  vMokshacITy
//
//  Created by Saurabh Suman on 08/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MessageDataModel.h"

@interface MessageViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *messHeading;
@property (weak, nonatomic) IBOutlet UILabel *messSubject;
@property (weak, nonatomic) IBOutlet UILabel *messDetail;
@property (weak, nonatomic) IBOutlet UILabel *messTIme;

@property(nonatomic,strong)MessageDataModel *dataModel;

@end
