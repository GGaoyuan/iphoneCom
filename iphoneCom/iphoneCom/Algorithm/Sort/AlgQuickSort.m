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
    
    NSInteger i = 0;
    NSInteger j = array.count - 1;
    [AlgQuickSort quickSort:array lowIdx:i highIdx:j];
}


+ (void)quickSort:(NSMutableArray *)array lowIdx:(NSInteger)i highIdx:(NSInteger)j {
//    if (i >= j) {
//        [AlgorithmTool show:array];
//        return;
//    }
    NSInteger k = [AlgQuickSort partition:array lowIdx:i highIdx:j];
    [AlgorithmTool show:array];
}


/**
 返回最后的索引j
 */
+ (NSInteger)partition:(NSMutableArray *)array lowIdx:(NSInteger)lo highIdx:(NSInteger)hi {
    //取第一个元素为分割数
    NSInteger p = [array[lo] integerValue];
    NSInteger index = lo;
    NSInteger i = hi;
    NSInteger j = lo;
    while (i > 0) {
        if ([array[i] integerValue] < p) {
            [array exchangeObjectAtIndex:index withObjectAtIndex:i];
            hi = i;
            index = i;
//            break;
            while (j < array.count - 1) {
                if ([array[j] integerValue] >= p) {
                    [array exchangeObjectAtIndex:index withObjectAtIndex:j];
                    lo = j;
                    index = j;
                    break;
                }
                j++;
            }
        }
        i--;
        if (j == i) {
            <#statements#>
        }
    }
    
    
    
    return 0;
}


@end

//    for (NSInteger i = hi; i > 0; i--) {
//        if ([array[i] integerValue] < p) {
//            [array exchangeObjectAtIndex:index withObjectAtIndex:i];
//            hi = i;
//            index = i;
//            break;
//        }
//    }
//    for (NSInteger i = lo; i < array.count - 1; i++) {
//        if ([array[i] integerValue] >= p) {
//            [array exchangeObjectAtIndex:index withObjectAtIndex:i];
//            lo = i;
//            index = i;
//            break;
//        }
//    }
