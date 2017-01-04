//
//  ViewController.m
//  PuBuLiu
//
//  Created by 边雷 on 16/12/8.
//  Copyright © 2016年 Mac-b. All rights reserved.
//

#import "ViewController.h"
#import "PBmodel.h"
#import "PBCell.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSMutableArray *_shopList;
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
    _shopList = [NSMutableArray array];
    [self loadData];
}

#pragma mark - 数据源方法
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _shopList.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    PBCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.model = _shopList[indexPath.item];
    
    return cell;
}

#pragma mark - footerView
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    // 参数一在UICollectionViewLayout中已经定义
    UICollectionReusableView *footerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"footer" forIndexPath:indexPath];
    return footerView;
}

- (void)loadData
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"1.plist" ofType:nil];
    
    NSArray *arr = [NSArray arrayWithContentsOfFile:path];
    
    NSMutableArray *arrM = [NSMutableArray array];
    
    for (NSDictionary *dict in arr) {
        PBmodel *model = [PBmodel modelWithDict:dict];
        [arrM addObject:model];
    }
    _shopList = arrM;
}

@end
