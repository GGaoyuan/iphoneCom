//
//  AlgMergeSort.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/6/25.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "AlgMergeSort.h"
#import "AlgorithmTool.h"

@interface AlgMergeSort()

@property (nonatomic, strong) NSMutableArray *tempArray;

@end

@implementation AlgMergeSort

+ (void)sort:(NSMutableArray *)array {
    [AlgorithmTool show:array];
    
    NSMutableArray *tempArray = [NSMutableArray array];
    [AlgMergeSort sort:array low:0 high:array.count - 1 tempArray:tempArray];//索引得是cout/length - 1才可以
}

//分治
+ (void)sort:(NSMutableArray *)array low:(NSInteger)lo high:(NSInteger)hi tempArray:(NSMutableArray *)tempArray {
    if (lo >= hi) return;
    NSInteger mid = lo + (hi - lo) / 2;
    [AlgMergeSort sort:array low:lo high:mid tempArray:tempArray];
    [AlgMergeSort sort:array low:mid + 1 high:hi tempArray:tempArray];
    [AlgMergeSort merge:array tempArray:tempArray low:lo mid:mid high:hi];
}

//合并
+ (void)merge:(NSMutableArray *)array tempArray:(NSMutableArray *)tempArray low:(NSInteger)lo mid:(NSInteger)mid high:(NSInteger)hi{
    
    NSLog(@"合并");
    NSLog(@"low ---- %ld  mid --- %ld  hi---- %ld",lo, mid, hi);
    NSLog(@"-------");
    
    
    
}

@end
