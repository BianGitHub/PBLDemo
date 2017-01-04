//
//  PBmodel.h
//  PuBuLiu
//
//  Created by 边雷 on 16/12/8.
//  Copyright © 2016年 Mac-b. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PBmodel : NSObject
@property(nonatomic, assign) NSInteger height;
@property(nonatomic, assign) NSInteger width;
@property(nonatomic, copy) NSString *icon;
@property(nonatomic, copy) NSString *price;

- (instancetype)initWithDict: (NSDictionary *)dict;

+ (instancetype)modelWithDict: (NSDictionary *)dict;

@end
