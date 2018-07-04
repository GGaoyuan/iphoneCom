//
//  AlgSequentialSearchList.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/7/3.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "AlgBinarySearchTree.h"
#import "YDMacro.h"
#import "AlgNodeView.h"

typedef enum : NSUInteger {
    NodeLarger,
    NodeSmaller,
    NodeSame,
} AlgBinarySearchTreeNodeCompareStatus;

@interface AlgBinarySearchTree()

@property (nonatomic, strong) NSMutableArray<NSString *> *keyArray;

@property (nonatomic, strong) NSMutableArray<id> *valueArray;

@property (nonatomic, strong) AlgBinarySearchTreeNode *firstNode;

@property (nonatomic, strong) AlgBinarySearchTreeNode *headNode;

@end

@implementation AlgBinarySearchTree

#pragma mark - ---------- Public ----------

- (void)putKey:(NSString *)key value:(id<NSObject>)value {
    
    AlgBinarySearchTreeNode *node = [AlgBinarySearchTreeNode new];
    node.value = value;
    node.key = key;
    if (self.count == 0) {
        self.firstNode = node;
    }
    else {
        self.headNode = self.firstNode;
        [self addNode:node];
    }
    node.nodeCount++;
    self.count++;
}

- (id<NSObject>)getValueByKey:(NSString *)key {
    
    return nil;
}

- (void)show {
    
}

#pragma mark - ---------- Private ----------

- (void)addNode:(AlgBinarySearchTreeNode *)newNode {
    AlgBinarySearchTreeNodeCompareStatus status = [self compareNode:self.headNode newNode:newNode];
    if (status == NodeLarger) {
        if (self.headNode.rightNode) {
            self.headNode = self.headNode.rightNode;
            [self addNode:newNode];
        }
        else {
            self.headNode.rightNode = newNode;
        }
    }
    else if (status == NodeSmaller) {
        if (self.headNode.leftNode) {
            self.headNode = self.headNode.leftNode;
            [self addNode:newNode];
        }
        else {
            self.headNode.leftNode = newNode;
        }
    }
    else {
        self.headNode.value = newNode.value;
    }
    
}

- (AlgBinarySearchTreeNodeCompareStatus)compareNode:(AlgBinarySearchTreeNode *)node newNode:(AlgBinarySearchTreeNode *)newNode {
    AlgBinarySearchTreeNodeCompareStatus status;
    if ([node.key compare:newNode.key] == NSOrderedAscending) {
        status = NodeLarger;
    }
    else if ([node.key compare:newNode.key] == NSOrderedDescending) {
        status = NodeSmaller;
    }
    else {
        status = NodeSame;
    }
    return status;
}

- (void)rank:(AlgBinarySearchTreeNode *)node {
    
}

#pragma mark - ---------- Tool ----------

- (NSInteger)getMaxDepth:(AlgBinarySearchTreeNode *)node {
    if (node == nil) {
        return 0;
    }
    NSInteger leftMaxDepth = [self getMaxDepth:node.leftNode];
    NSInteger rightMaxDepth = [self getMaxDepth:node.rightNode];
    return MAX(leftMaxDepth, rightMaxDepth);
}

- (void)show:(UIView *)view {
    //我先层序遍历一遍，每一层都是一个数组
    NSLog(@"depth --- %ld",[self getMaxDepth:self.firstNode]);
    
    
    return;
    CGFloat viewWidth = ScreenWidth / self.count;
    CGFloat viewHeight = 20;
    
    NSInteger firstNodeLoc = 0;
    AlgBinarySearchTreeNode *node = self.firstNode;
    while (node != nil) {
        if (node.leftNode) {
            node = node.leftNode;
            firstNodeLoc++;
        }
        else {
            node = nil;
        }
    }
    NSLog(@"%ld",firstNodeLoc);
    
    for (int i = 0; i < self.count; i++) {
        AlgNodeView *nodeView;
        if (i == 3) {
            nodeView = [[AlgNodeView alloc] initWithFrame:CGRectMake(viewWidth * i, 100, viewWidth, viewHeight) text:@"1"];
        }
        else {
            nodeView = [[AlgNodeView alloc] initWithFrame:CGRectMake(viewWidth * i, 200, viewWidth, viewHeight) text:@"1"];
        }
        
        [view addSubview:nodeView];
    }
}

@end

/*
 
 AlgBinarySearchTreeNode *node = [AlgBinarySearchTreeNode new];
 node.key = @"123";
 
 AlgBinarySearchTreeNode *newNode = [AlgBinarySearchTreeNode new];
 newNode.key = @"dfsdf";
 
 AlgBinarySearchTreeNodeCompareStatus status = [self compareNode:node newNode:newNode];
 if (status == NodeLarger) {
 NSLog(@"大于");
 }
 else if (status == NodeSmaller) {
 NSLog(@"小于");
 }
 else {
 NSLog(@"等于");
 }
 
 */
