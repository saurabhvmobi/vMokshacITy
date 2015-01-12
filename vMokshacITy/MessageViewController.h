//
//  MessageViewController.h
//  vMokshacITy
//
//  Created by Saurabh Suman on 08/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MessageDataModel.h"

#import "MessageViewCell.h"

@interface MessageViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,strong)MessageDataModel *dataMModel;

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
