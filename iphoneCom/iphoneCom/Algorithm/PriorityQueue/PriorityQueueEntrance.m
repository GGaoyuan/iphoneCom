//
//  PriorityQueueEntrance.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/6/28.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "PriorityQueueEntrance.h"
#import "AlgPriorityQueue.h"

@implementation PriorityQueueEntrance

- (void)priorityQueue {
    
//    NSString *s1 = @"3";
//    NSString *s2 = @"2";
//    
//    if (s1 > s2) {
//        NSLog(@"1");
//    }
//    else {
//        NSLog(@"2");
//    }
//    
//    return;
//    
    
    AlgPriorityQueue *pq = [AlgPriorityQueue priorityQueue];
    //T
    [pq insert:6];
    NSLog(@"-------");
    [pq insert:1];
    NSLog(@"-------");
    [pq insert:8];
    NSLog(@"-------");
    [pq insert:2];
    NSLog(@"-------");
    
}

@end
