//
//  TipsViewController.h
//  vMokshacITy
//
//  Created by Saurabh Suman on 12/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TipsViewController : BossClass<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableVIew;

@end
