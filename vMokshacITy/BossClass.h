//
//  BossClass.h
//  vMokshacITy
//
//  Created by Saurabh Suman on 20/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BossClass : UIViewController

- (NSString *)stingForColorTheme;
- (UIColor *)barColorForIndex:(NSInteger)index;
-(UIColor *)subViewsColours;
-(UIColor *)seperatorColours;



@end
