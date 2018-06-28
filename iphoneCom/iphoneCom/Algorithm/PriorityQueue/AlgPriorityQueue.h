//
//  AlgPriorityQueue.h
//  iphoneCom
//
//  Created by gaoyuan on 2018/6/28.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AlgorithmTool.h"

//优先队列通常做的操作是删除最大(小)元素，插入元素，他的实现方式也有很多比如链表，栈，数组，队列等等，但是他们在最坏的情况下的插入和删除的复杂度都是N，但是如果是二叉堆的结构，则插入和删除都是logN

@interface AlgPriorityQueue : NSObject

/**
 创建一个优先队列
 */
+ (AlgPriorityQueue *)priorityQueue;

/**
 插入一个元素
 */
- (void)insert:(NSInteger)integer;

/**
 返回优先队列中的最大元素
 */
- (NSInteger)max;

/**
 删除并且返回最大元素
 */
- (NSInteger)delMax;

/**
 队列是否为空
 */
- (BOOL)isEmpty;

/**
 返回队列元素个数
 */
- (NSInteger)count;

@end
