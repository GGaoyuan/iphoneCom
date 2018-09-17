//
//  AlgInsertSort.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/6/27.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "AlgInsertSort.h"

@implementation AlgInsertSort

+ (void)sort:(NSMutableArray *)array {
//    [AlgorithmTool show:array];
    for (int i = 0; i < array.count; i++) {
        for (int j = i; j < array.count; j++) {
            if ([array[i] integerValue] > [array[j] integerValue]) {
                [array exchangeObjectAtIndex:i withObjectAtIndex:j];
            }
        }
    }
//    [AlgorithmTool show:array];
}

@end
