//
//  AlgorithmEntrance.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/6/25.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "AlgorithmEntrance.h"
#import "AlgMergeSort.h"
#import "AlgQuickSort.h"

@interface AlgorithmEntrance ()

@end

@implementation AlgorithmEntrance

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"4TH";
    
    NSMutableArray *datas = @[@(2),@(5),@(1),@(3),@(0),@(6),@(4),@(9),@(7),@(8)].mutableCopy;
//    NSMutableArray *datas = @[@(2),@(5),@(1),@(3),@(0),@(6),@(4),@(9),@(7),@(10),@(8)].mutableCopy;
//    NSMutableArray *datas = @[@"M",@"E",@"R",@"G",@"E",@"S",@"O",@"R",@"T",@"E",@"X",@"A",@"M",@"P",@"L",@"E"].mutableCopy;
    
    //太难了  完不成
//    [AlgMergeSort sort:datas];
    //快排序
    [AlgQuickSort sort:datas];
    
    
}

@end
