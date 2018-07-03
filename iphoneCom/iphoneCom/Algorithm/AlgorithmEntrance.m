//
//  AlgorithmEntrance.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/6/25.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "AlgorithmEntrance.h"

#import "PriorityQueueEntrance.h"
#import "AlgSearchEntrance.h"
#import "SortEntrance.h"

@interface AlgorithmEntrance ()

@end

@implementation AlgorithmEntrance

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"4TH";
//    PriorityQueueEntrance *pq = [PriorityQueueEntrance new];
//    [pq priorityQueue];

//    SortEntrance *sort = [SortEntrance new];
//    [sort sort];
    
    AlgSearchEntrance *search = [AlgSearchEntrance new];
    [search search];
    
}

@end
