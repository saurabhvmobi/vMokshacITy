//
//  myTicOrdViewController.h
//  vMokshacITy
//
//  Created by Saurabh Suman on 16/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyTicketDataModel.h"


@interface myTicOrdViewController : BossClass<UITableViewDelegate,UITableViewDataSource>



@property(nonatomic,strong)NSString *strDFF;


@property(nonatomic,strong)MyTicketDataModel *ticket;
@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end
