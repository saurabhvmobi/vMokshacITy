//
//  MessageDataModel.h
//  vMokshacITy
//
//  Created by Saurabh Suman on 08/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MessageDataModel : NSObject

@property(nonatomic,strong)NSString *messageHeading;
@property(nonatomic,strong)NSString *messageSubject;
@property(nonatomic,strong)NSString *messageDetail;
@property(nonatomic,strong)NSString *messageTime;
@property(nonatomic,strong)NSString *messageDate;



@end
