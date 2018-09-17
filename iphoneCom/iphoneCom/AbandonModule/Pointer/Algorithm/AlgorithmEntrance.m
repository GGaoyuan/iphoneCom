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
#import "AlgBinarySearchTree.h"
#import "AlgNodeView.h"
#import "YDMacro.h"
#import "AlgGraphEntrance.h"

@interface AlgorithmEntrance ()

@end

@implementation AlgorithmEntrance

- (instancetype)init {
    self = [super init];
    if (self) {
        //搜索二叉树
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(binarySearchTreeShow:) name:@"binarySearchTreeShow" object:nil];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"4TH";
//    PriorityQueueEntrance *pq = [PriorityQueueEntrance new];
//    [pq priorityQueue];

//    SortEntrance *sort = [SortEntrance new];
//    [sort sort];
    
//    AlgSearchEntrance *search = [AlgSearchEntrance new];
//    [search search];
    
    AlgGraphEntrance *graph = [AlgGraphEntrance new];
    [graph entrance];
    
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

#pragma mark - ---------- Show ----------
- (void)binarySearchTreeShow:(NSNotification *)notify {
    AlgBinarySearchTree *tree = (AlgBinarySearchTree *)notify.object;
    [tree show:self.view];

}

@end
