//
//  PBmodel.m
//  PuBuLiu
//
//  Created by 边雷 on 16/12/8.
//  Copyright © 2016年 Mac-b. All rights reserved.
//

#import "PBmodel.h"

@implementation PBmodel

- (instancetype)initWithDict:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+ (instancetype)modelWithDict:(NSDictionary *)dict
{
    return [[self alloc]initWithDict:dict];
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key{}

@end
