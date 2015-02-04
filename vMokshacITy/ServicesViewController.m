//
//  ServicesViewController.m
//  vMokshacITy
//
//  Created by Saurabh Suman on 04/02/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import "ServicesViewController.h"
#define WEB_CLIPS @""


@interface ServicesViewController ()

{
   NSArray *collectionviewData;
    NSMutableArray *labarrData;
    AFHTTPRequestOperationManager *manager;


}



@end


@implementation ServicesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.


    collectionviewData = @[@"lacation",@"lacation",@"lacation",@"lacation",@"lacation",@"lacation",@"lacation",@"lacation",@"lacation"];
    
    
    [self getDataFromWeb];
    
   labarrData=[[NSMutableArray alloc]init];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return labarrData.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"cell";
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    serviceModel *model= labarrData[indexPath.row];
    
    
    UILabel *lab=(UILabel *)[cell viewWithTag:101];
    lab.text = model.serviceName;
    
    
    UIImageView *recipeImageView = (UIImageView *)[cell viewWithTag:100];
    recipeImageView.image = [UIImage imageNamed:[collectionviewData objectAtIndex:indexPath.row]];
    
    return cell;
}

-(void)getDataFromWeb
{
    
    NSString *str=[NSString stringWithFormat:@"http://simplicitytst.ripple-io.in/WebClip"];
    
    
    
    manager = [AFHTTPRequestOperationManager manager];
    AFJSONRequestSerializer *requestSerializer = [AFJSONRequestSerializer serializer];
    
    [requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    manager.requestSerializer = requestSerializer;
    
    
    
    NSDictionary *paraDICt=[NSJSONSerialization JSONObjectWithData:[WEB_CLIPS dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
    
    
    [manager POST:str
      parameters:paraDICt
         success:^(AFHTTPRequestOperation *operation, id responseObject){
             NSData *responseData = [operation responseData];
             
             
             //  NSLog(@"%@",responseData);
             
             NSDictionary *mainDict=[NSJSONSerialization JSONObjectWithData:responseData options:kNilOptions error:nil];
             // NSLog(@"%@",mainDict);
             
             NSArray *arr=mainDict[@"aaData"][@"WebClips"];
             
             
             
             for (NSDictionary *adict in arr) {
                
                 
               serviceModel *serv=[[serviceModel alloc]init];
                
                 serv.serviceName=adict[@"Description"];
                 [labarrData addObject:serv];
                
                 NSString *urlstr=adict[@""];
             
                 NSLog(@"%@",urlstr);
             
             }
             
             
             [_collectionView reloadData];
             
             }
         failure:^(AFHTTPRequestOperation *operation, NSError *error) {
             NSLog(@"%@",error);
         }];
    
    


}









@end
