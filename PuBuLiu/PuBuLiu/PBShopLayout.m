//
//  PBShopLayout.m
//  PuBuLiu
//
//  Created by 边雷 on 17/1/4.
//  Copyright © 2017年 Mac-b. All rights reserved.
//

#import "PBShopLayout.h"

@interface PBShopLayout ()
@property(nonatomic, strong) NSMutableArray *attrList;
@end

@implementation PBShopLayout

//  准备布局时调用
//  设置各个item的位置和大小
//  组和组之间的间距,同一组内狂歌cell的最小间距, 同一组内不同行之间的间距,这些值都已经有了
- (void)prepareLayout
{
    //在这个方法里计算各个格子的大小和位置
    UICollectionViewLayoutAttributes *attr = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:[NSIndexPath indexPathForItem:0 inSection:0]];
    
    attr.frame = CGRectMake(0, 0, 100, 200);
    
    [self.attrList addObject:attr];
}

// 对指定范围的元素进行布局设置
- (NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect
{
    return self.attrList;
}

- (NSMutableArray *)attrList
{
    if (_attrList == nil) {
        _attrList = [NSMutableArray array];
    }
    return _attrList;
}

@end
