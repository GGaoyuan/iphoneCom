//
//  AlgPriorityQueue.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/6/28.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "AlgPriorityQueue.h"

@interface AlgPriorityQueue()

@property (nonatomic, strong) NSMutableArray *array;

@property (nonatomic, assign) NSInteger count;

@end

@implementation AlgPriorityQueue

#pragma mark - ---------- Public ----------

+ (AlgPriorityQueue *)priorityQueue {
    AlgPriorityQueue *pq = [AlgPriorityQueue new];
    pq.array = [NSMutableArray arrayWithObject:[NSObject new]];
    return pq;
}

/**
 插入元素到最后，然后上浮到合适的位置
 */
- (void)insert:(NSInteger)integer {
    
    
    [self.array addObject:@(integer)];
    self.count++;
    [self swim:self.count];
    
    [AlgorithmTool show:self.array];
}

- (NSInteger)max {
    if (self.count == 0) return 0;
    return [self.array[1] integerValue];
}

/**
 从最顶端删除元素，然后将末尾的元素放到顶端，再下沉
 */
- (NSInteger)delMax {
    if (self.count == 0) return 0;
    NSInteger retValue = [self.array[1] integerValue];
    [self.array replaceObjectAtIndex:1 withObject:[self.array lastObject]];
    [self.array removeLastObject];
    [AlgorithmTool show:self.array];
    [self sink:1];
    
    [AlgorithmTool show:self.array];
    
    return retValue;
}

- (BOOL)isEmpty {
    if (self.count == 0) {
        return YES;
    }
    return NO;
}

- (NSInteger)count {
    return _count;
}

#pragma mark - ---------- Private ----------

/**
 上浮
 */
- (void)swim:(NSInteger)index {
    NSLog(@"index---%ld",index);
    while (index > 1 && ![self less:index index:index / 2]) {
        [self.array exchangeObjectAtIndex:index withObjectAtIndex:index/2];
        index = index / 2;
    }
}


/**
 下潜
 */
- (void)sink:(NSInteger)index {
    while (index * 2 < self.count) {
        NSInteger j = 2 * index;
        if (j < self.count && [self less:j index:j+1]) {
            j++;
        }
        if (![self less:index index:j]) {
            break;
        }
        [self.array exchangeObjectAtIndex:index withObjectAtIndex:j];
        index = j;
    }
}

- (BOOL)less:(NSInteger)i index:(NSInteger)j {
    if (self.array[i] < self.array[j]) {
        return YES;
    }
    return NO;
}

@end
