//
//  TipsDetailViewController.m
//  vMokshacITy
//
//  Created by Saurabh Suman on 21/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import "TipsDetailViewController.h"

@interface TipsDetailViewController ()

{

    NSArray *collectionData;
}

@end

@implementation TipsDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    collectionData=@[@"test1",@"test2",@"test3",@"test4",@"test5",@"test6",@"test7",@"test8",@"test9"];


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
    return collectionData.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"cell";
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    
    
    UILabel *lab=(UILabel *)[cell viewWithTag:100];
    lab.text = collectionData[indexPath.row];

    
    
    return cell;
}



@end
