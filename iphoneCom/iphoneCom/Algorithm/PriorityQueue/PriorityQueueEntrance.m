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
    
    //TRNAIGSPOEH
    //20    18  14  1   9   7   19  16  15  5   8
    
    //TSRPNOAEIHG
    //20 19 18 16 14 15 1 5 9 8 7
    
    
    AlgPriorityQueue *pq = [AlgPriorityQueue priorityQueue];
    
    [pq insert:20];
    NSLog(@"-------");
    [pq insert:18];
    NSLog(@"-------");
    [pq insert:14];
    NSLog(@"-------");
    [pq insert:1];
    NSLog(@"-------");
    [pq insert:9];
    NSLog(@"-------");
    [pq insert:7];
    NSLog(@"-------");
    [pq insert:19];
    NSLog(@"-------");
    [pq insert:16];
    NSLog(@"-------");
    [pq insert:15];
    NSLog(@"-------");
    [pq insert:5];
    NSLog(@"-------");
    [pq insert:8];
    NSLog(@"-------");
    [pq insert:60];
    NSLog(@"&&&&&&&&&&&&&&&&");
    
    [pq delMax];
    NSLog(@"-------");
    
    //20 19 18 16 14 15 1 5 9 8 7
}

@end
