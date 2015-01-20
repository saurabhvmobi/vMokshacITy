//
//  RaiseTicketViewController.h
//  vMokshacITy
//
//  Created by Saurabh Suman on 09/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RaiseTicketViewController : BossClass<UITableViewDelegate,UITableViewDataSource,UIAlertViewDelegate>

- (IBAction)DoneButtonAction:(id)sender;


@property(nonatomic,strong)NSString *strDFF;
@end
