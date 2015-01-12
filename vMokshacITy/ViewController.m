//
//  ViewController.m
//  vMokshacITy
//
//  Created by Saurabh Suman on 08/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.



    self.loginButton.layer.cornerRadius=3;
    self.userName.layer.cornerRadius=3;
    self.passWord.layer.cornerRadius=3;
    
    [self.loginButton setTitle:@"Sign In" forState:normal];
    self.userName.text=@"  User name";
self.passWord.text=@"  Password";

    self.navigationController.navigationBarHidden=YES;
    


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
