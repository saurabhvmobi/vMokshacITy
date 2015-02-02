//
//  DataBase.h
//  vMokshacITy
//
//  Created by Saurabh Suman on 28/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DataBase;

@protocol DBManagerDelegate <NSObject>

-(void)DBManager:(DataBase *)manager gotsqlitestatement:(sqlite3_stmt *)statement;

@end



@interface DataBase : NSObject

@property(nonatomic,strong)id<DBManagerDelegate>delegate;

-(instancetype)initWithFIleName:(NSString *)dbFile;
-(void)CreateTable:(NSString *)query;
-(void)dropTable:(NSString *)tableName;
-(void)saveDataTOdbForquery:(NSString *)query;
-(BOOL)getDataFromQuery:(NSString *)query;
-(void)searchDataforCondition:(NSString *)query;
-(void)updateData:(NSString *)query;




@end
