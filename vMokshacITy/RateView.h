//
//  RateView.h
//  vMokshacITy
//
//  Created by Saurabh Suman on 03/02/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>


@class RateView;

@protocol RateViewDelegate <NSObject>

- (void)rateView:(RateView *)rateView ratingDidChange:(float)rating;


@end
@interface RateView : UIView

@property (strong, nonatomic) UIImage *notSelectedImage;
@property (strong, nonatomic) UIImage *halfSelectedImage;
@property (strong, nonatomic) UIImage *fullSelectedImage;
@property (assign, nonatomic) NSInteger rating;
@property (assign) BOOL editable;
@property (strong) NSMutableArray * imageViews;
@property (assign, nonatomic) int maxRating;
@property (assign) int midMargin;
@property (assign) int leftMargin;
@property (assign) CGSize minImageSize;
@property (assign) id <RateViewDelegate> delegate;



@end
