//
//  AlgHeapSort.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/6/29.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "AlgHeapSort.h"

@interface AlgHeapSort()

@property (nonatomic, strong) NSMutableArray *array;

@property (nonatomic, assign) NSInteger count;

@end

@implementation AlgHeapSort

+ (void)sort:(NSMutableArray *)array {
    [AlgorithmTool show:array];
    
    AlgHeapSort *hs = [AlgHeapSort new];
    hs.array = [NSMutableArray arrayWithArray:array];
    [hs construction];
    [hs heapSort];
}


- (void)construction {
    //第一个非叶子节点
    self.count = self.array.count;
    NSInteger node = self.count / 2 - 1;
    while (node > -1) {
        [self sink:node];
        node--;
    }
    [AlgorithmTool show:self.array];
    NSLog(@"堆构造已完成~");
}

- (void)heapSort {
    while (self.count != 0) {
        [self.array exchangeObjectAtIndex:0 withObjectAtIndex:self.count - 1];
        self.count --;
        [AlgorithmTool show:self.array];
        NSLog(@"~~~~~~~");
        NSInteger node = self.count / 2 - 1;
        while (node > -1) {
            [self sink:node];
            node--;
        }
    }
}

- (void)sink:(NSInteger)nodeIndex {
    
    NSInteger leftIndex = nodeIndex * 2 + 1;
    NSInteger rightIndex = nodeIndex * 2 + 2;

    if (leftIndex <= self.count - 1 && self.array[leftIndex] > self.array[nodeIndex]) {
        [self.array exchangeObjectAtIndex:leftIndex withObjectAtIndex:nodeIndex];
        [self sink:leftIndex];
    }
    if (rightIndex <= self.count - 1 && self.array[rightIndex] > self.array[nodeIndex]) {
        [self.array exchangeObjectAtIndex:rightIndex withObjectAtIndex:nodeIndex];
        [self sink:rightIndex];
    }
    
}

@end
