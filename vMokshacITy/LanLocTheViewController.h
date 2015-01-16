//
//  LanLocTheViewController.h
//  vMokshacITy
//
//  Created by Saurabh Suman on 09/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LanLocTheViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property(nonatomic,strong)NSString *selectedSetting;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *DoneButtonAction;
- (IBAction)doneButtonAction:(id)sender;

- (IBAction)cancelButtonAction:(id)sender;
@end
