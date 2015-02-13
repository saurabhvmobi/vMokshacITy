//
//  Postman.h
//  vMokshacITy
//
//  Created by Saurabh Suman on 09/02/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Postman;
@protocol PostmanDelegate <NSObject>

-(void)postman:(Postman *)postman gotSuccess:(NSData *)responseData forURL:(NSString *)urlString;

-(void)postman:(Postman *)postman gotFailuar:(NSError *)errpr forURL:(NSString *)urlString;

@end





@interface Postman : NSObject









@end
