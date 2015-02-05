//
//  TipsDetailViewController.h
//  vMokshacITy
//
//  Created by Saurabh Suman on 21/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TipsDetailViewController : BossClass<UICollectionViewDataSource,UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *lab;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;



@end
