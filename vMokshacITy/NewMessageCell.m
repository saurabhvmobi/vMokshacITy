//
//  NewMessageCell.m
//  vMokshacITy
//
//  Created by Saurabh Suman on 14/01/15.
//  Copyright (c) 2015 Vmoksha Technologies Pvt Ltd. All rights reserved.
//

#import "NewMessageCell.h"

@implementation NewMessageCell
{

    BOOL open;
}
- (void)awakeFromNib
{
    // Initialization code

    open=YES;
    
    
    self.alphaView.layer.cornerRadius=10;

    self.bugView.layer.cornerRadius=12;
    
    
    
    
  self.labBug.text=@"12";
    
    
            self.bugView.backgroundColor=[UIColor redColor];
    



}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}





@end
