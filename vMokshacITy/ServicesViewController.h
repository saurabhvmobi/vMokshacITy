//
//  ServicesViewController.h
//  vMokshacITy
//
//  Created by Saurabh Suman on 04/02/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "serviceModel.h"


@interface ServicesViewController : BossClass<UICollectionViewDataSource,UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property(nonatomic,strong)serviceModel *model;
@end
