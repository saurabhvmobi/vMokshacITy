//
//  ServiceOrdViewController.h
//  vMokshacITy
//
//  Created by Saurabh Suman on 16/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ServiceOrdViewController.h"

#import "MyTicketDataModel.h"



@interface ServiceOrdViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property(nonatomic,strong)MyTicketDataModel *Ticket;


@property(nonatomic,strong)NSString *strDIFF;

@end
