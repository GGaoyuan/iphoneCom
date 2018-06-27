//
//  AlgQuickSort.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/6/26.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "AlgQuickSort.h"

@implementation AlgQuickSort

+ (void)sort:(NSMutableArray *)array {
    [AlgorithmTool show:array];
    [AlgQuickSort quickSort:array lowIdx:0 highIdx:array.count - 1];
}


+ (void)quickSort:(NSMutableArray *)array lowIdx:(NSInteger)lo highIdx:(NSInteger)hi {
    if (hi <= lo) return;
    NSInteger j = [AlgQuickSort partition:array lowIdx:lo highIdx:hi];
    [AlgQuickSort quickSort:array lowIdx:lo highIdx:j - 1];
    [AlgQuickSort quickSort:array lowIdx:j + 1 highIdx:hi];
}

+ (NSInteger)partition:(NSMutableArray *)array lowIdx:(NSInteger)lo highIdx:(NSInteger)hi {
    NSInteger i = lo;
    NSInteger j = hi + 1;
    NSInteger v = [array[lo] integerValue];
    while (true) {
        while ([array[++i] integerValue] < v) {
            if (i == hi) {
                break;
            }
        }
        while (v < [array[--j] integerValue] ) {
            if (j == lo) {
                break;
            }
        }
        if (i >= j) {
            break;
        }
        [array exchangeObjectAtIndex:i withObjectAtIndex:j];
        [AlgorithmTool show:array];
//        NSLog(@"---------------------");
    }
    [array exchangeObjectAtIndex:lo withObjectAtIndex:j];
    [AlgorithmTool show:array];
//    NSLog(@"+++++++++++++++++++++");
    return j;
}

@end
