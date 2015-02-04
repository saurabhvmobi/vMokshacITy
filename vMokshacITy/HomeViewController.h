//
//  HomeViewController.h
//  vMokshacITy
//
//  Created by Saurabh Suman on 08/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : BossClass<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UIScrollView *scroll;


- (IBAction)raiseTicketAction:(id)sender;
- (IBAction)messageAction:(id)sender;

- (IBAction)myTicketAction:(id)sender;

- (IBAction)tipsAction:(id)sender;
- (IBAction)PlacrOrderAction:(id)sender;
- (IBAction)myOrderAction:(id)sender;
- (IBAction)settingAction:(id)sender;



- (IBAction)callHelpDeskAction:(id)sender;
- (IBAction)webClipAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *contanerDashBoard;
@property (weak, nonatomic) IBOutlet UIView *callview;

@end
