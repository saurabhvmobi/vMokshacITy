//
//  DataBase.m
//  vMokshacITy
//
//  Created by Saurabh Suman on 28/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import "DataBase.h"

@implementation DataBase
{
    
    NSString *dataBasePath;
    sqlite3 *dataBase;
}

-(instancetype)initWithFIleName:(NSString *)dbFile
{
    
    NSString *docDir;
    NSArray *dirPath;
    
    self = [super init];
    if (self) {
        
        dirPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        
        docDir=dirPath[0];
        
        dataBasePath = [[NSString alloc]initWithString:[docDir stringByAppendingPathComponent:dbFile]];
        
        NSLog(@"data Base Path is %@",dataBasePath);
        
    }
    
    return self;
}

-(void)CreateTable:(NSString *)query
{
    NSLog(@"Data Base Path %@",dataBasePath);
    NSFileManager *filemgr = [NSFileManager defaultManager];
    const char *dbpath = [dataBasePath UTF8String];
    if (![filemgr fileExistsAtPath: dataBasePath ])
    {
        if (sqlite3_open(dbpath, &dataBase)== SQLITE_OK)
        {
            sqlite3_close(dataBase);
        }
    }
    
    if (sqlite3_open(dbpath, &dataBase) == SQLITE_OK)
    {
        char *errMsg;
        const char *sql_stmt = [query UTF8String];
        
        if (sqlite3_exec(dataBase, sql_stmt, NULL, NULL, &errMsg) != SQLITE_OK)
        {
            NSLog(@"Failed to create table");
        }
        sqlite3_close(dataBase);
    }
    else {
        NSLog(@"Failed to open/create database");
    }
    
}


-(void)saveDataTOdbForquery:(NSString *)query
{
    const char *dbPath = [dataBasePath UTF8String];
    
    if (sqlite3_open(dbPath, &dataBase) == SQLITE_OK)
    {
        const char *insert_stmt = [query UTF8String];
        
        sqlite3_stmt *statement;
        
        sqlite3_prepare_v2(dataBase, insert_stmt, -1, &statement, NULL);
        
        if (sqlite3_step(statement) == SQLITE_DONE)
        {
            NSLog(@"saved Sucessfully");
        }
        else
        {
            NSLog(@"Not saved ");
        }
        
        sqlite3_finalize(statement);
        sqlite3_close(dataBase);
    }
    
}

-(void)dropTable:(NSString *)tableName
{
    const char *dbPath = [dataBasePath UTF8String];
    
    if (sqlite3_open(dbPath, &dataBase) == SQLITE_OK)
    {
        NSString *deleQry = [NSString stringWithFormat:@"DROP TABLE IF EXISTS %@", tableName];
        const char *sqlStmt = [deleQry UTF8String];
        
        sqlite3_stmt *statement;
        if (sqlite3_prepare_v2(dataBase, sqlStmt, -1, &statement, NULL) == SQLITE_OK)
        {
            if (sqlite3_step(statement) == SQLITE_DONE)
            {
                NSLog(@"Table %@ is droped", tableName);
            }else
            {
                NSLog(@"Table %@ is not able to dropped", tableName);
            }
        }else
        {
            NSLog(@"Statement for droping is failed to be prepared");
        }
        
        sqlite3_close(dataBase);
    }
    
    
}
-(BOOL)getDataFromQuery:(NSString *)query
{
    
    const char *dbPath = [dataBasePath UTF8String];
    
    if (sqlite3_open(dbPath, &dataBase) == SQLITE_OK)
    {
        const char *insert_stmt = [query UTF8String];
        
        sqlite3_stmt *statement;
        
        if (sqlite3_prepare_v2(dataBase, insert_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            [self.delegate DBManager:self gotsqlitestatement:statement];
            sqlite3_finalize(statement);
        }
        else
        {
            return NO;
        }
        
        sqlite3_close(dataBase);
    }else
    {
        return NO;
    }
    
    return YES;
    
}

-(void)searchDataforCondition:(NSString *)query
{
    
    
}

-(void)updateData:(NSString *)query
{
    
    
    
}



@end
