//
//  AlgMergeSort.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/6/25.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "AlgMergeSort.h"
#import "AlgorithmTool.h"

@implementation AlgMergeSort

+ (void)sort:(NSMutableArray *)array {
    [AlgorithmTool show:array];
    NSMutableArray *loArray = [NSMutableArray arrayWithCapacity:2];
    NSMutableArray *hiArray = [NSMutableArray arrayWithCapacity:2];
    for (NSInteger i = 0; i < array.count; i++) {
        if (i % 4 == 0) {
            if (loArray.count == 2 && hiArray.count == 2) {
                if (loArray[0] > loArray[1]) {
                    [loArray exchangeObjectAtIndex:0 withObjectAtIndex:1];
                }
                if (hiArray[0] > hiArray[1]) {
                    [hiArray exchangeObjectAtIndex:0 withObjectAtIndex:1];
                }
                NSLog(@"-------");
                [AlgorithmTool show:loArray];
                [AlgorithmTool show:hiArray];
                NSLog(@"-------");
            }
            
            [loArray removeAllObjects];
            [hiArray removeAllObjects];
            
            [loArray addObject:array[i]];
        }
        else if (i % 4 == 1) {
            [loArray addObject:array[i]];
        }
        else if (i % 4 == 2) {
            [hiArray addObject:array[i]];
        }
        else if (i % 4 == 3) {
            [hiArray addObject:array[i]];
        }
        
        
        
    }
    
    
}

+ (void)merge:(NSMutableArray *)a low:(NSInteger)lo middle:(NSInteger)mid high:(NSInteger)hi {
//    NSInteger i = lo;
//    NSInteger j = mid + 1;
//    
//    for (NSInteger k = lo; k <= hi; k++) {
//        
//    }
}

@end
