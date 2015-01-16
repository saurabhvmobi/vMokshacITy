//
//  MyTicketDataModel.h
//  vMokshacITy
//
//  Created by Saurabh Suman on 16/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyTicketDataModel : NSObject

@property(nonatomic,strong)NSString *serviceType;
@property(nonatomic,strong)NSString *serviceDetail;
@property(nonatomic,strong)NSString *agent;
@property(nonatomic,strong)NSString *status;
@property(nonatomic,strong)NSString *Date;

@end
