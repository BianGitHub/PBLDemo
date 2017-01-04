//
//  PBCell.m
//  PuBuLiu
//
//  Created by 边雷 on 16/12/9.
//  Copyright © 2016年 Mac-b. All rights reserved.
//

#import "PBCell.h"
#import "PBmodel.h"
@interface PBCell ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *pricelabel;

@end

@implementation PBCell

- (void)setModel:(PBmodel *)model
{
    _model = model;
    self.imageView.image = [UIImage imageNamed:model.icon];
    self.pricelabel.text = model.price;
    
}

@end
