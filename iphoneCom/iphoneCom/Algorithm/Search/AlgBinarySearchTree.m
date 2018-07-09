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

- (AlgBinarySearchTreeNode *)getValueByKey:(NSString *)key {
    AlgBinarySearchTreeNode *returnNode = [self getValueByKey:self.firstNode key:key];
    return returnNode;
}

- (AlgBinarySearchTreeNode *)getMaxNode {
    return [self getMaxNode:self.firstNode];
}

- (AlgBinarySearchTreeNode *)getMinNode {
    return [self getMinNode:self.firstNode];
}

- (void)deleteWithKey:(NSString *)key {
    NSLog(@"删除 --- delete node --- %@",key);
    //先寻找要删除的节点
    AlgBinarySearchTreeNode *deleteNode = [self getValueByKey:self.firstNode key:key];
    if (deleteNode == nil) {
        NSLog(@"删除 --- 找不到deleteNode");
        return;
    }
    //删除后会有两个分支，这时候，取删除节点的右子树（比节点大的那个子树），然后取那个子树的最小节点替换要删除的节点
    AlgBinarySearchTreeNode *rightMinNode = [self getMinNode:deleteNode.rightNode];
    if (rightMinNode == nil) {
        //如果没有右节点，那么deleteNode就是倒数第二层的节点，直接结束
        return;
    }
    //交换节点，并且删除
    [self exchangeNode:deleteNode target:rightMinNode];
    rightMinNode = nil;
//    [self deleteLayLayerSubNode:rightMinNode];
    self.count -- ;
    NSLog(@"");
}

- (void)show {
    
}

#pragma mark - ---------- Private ----------

- (AlgBinarySearchTreeNode *)getLastNode:(AlgBinarySearchTreeNode *)node findNode:(AlgBinarySearchTreeNode *)findNode {
    if (node == nil) {
        NSLog(@"删除---节点不存在，删除失败");
        return nil;
    }
    AlgBinarySearchTreeNodeCompareStatus status = [self compareNode:node.key newNode:findNode.key];
    if (status == NodeLarger) {
        if (node.rightNode) {
            AlgBinarySearchTreeNode *rightNode = node.rightNode;
            AlgBinarySearchTreeNodeCompareStatus kStatus = [self compareNode:rightNode.key newNode:findNode.key];
            if (kStatus == NodeSame) {
                return node;
            }
            else {
                return [self getLastNode:rightNode findNode:findNode];
            }
            
        }
    }
    else if (status == NodeSmaller) {
        if (node.leftNode) {
            AlgBinarySearchTreeNode *leftNode = node.leftNode;
            AlgBinarySearchTreeNodeCompareStatus kStatus = [self compareNode:leftNode.key newNode:findNode.key];
            if (kStatus == NodeSame) {
                return node;
            }
            else {
                return [self getLastNode:leftNode findNode:findNode];
            }
        }
    }
    else {
        return nil;
    }
    return nil;
}

#warning TODO 脑仁疼，不想写了
- (void)exchangeNode:(AlgBinarySearchTreeNode *)orginNode target:(AlgBinarySearchTreeNode *)targetNode {
    //要删除的节点的上一个节点
    AlgBinarySearchTreeNode *originLastNode = [self getLastNode:self.firstNode findNode:orginNode];
//    deleteNode = rightMinNode;
    if (originLastNode) {
        if ([originLastNode.leftNode isEqual:orginNode]) {
            
        }
        else {
            targetNode.leftNode = orginNode.leftNode;
            targetNode.rightNode = orginNode.rightNode;
            originLastNode.rightNode = targetNode;
        }
    }
    else {
        self.firstNode = targetNode;
    }
}

/**
 对于删除有两个子节点的节点，用后继节点填补位置
 */
//删除底层的节点
- (void)deleteLayLayerSubNode:(AlgBinarySearchTreeNode *)node {
    AlgBinarySearchTreeNode *lastNode = [self getLastNode:self.firstNode findNode:node];
    if ([lastNode.leftNode isEqual:node]) {
        lastNode.leftNode = nil;
    }
    else {
        lastNode.rightNode = nil;
    }
}

- (AlgBinarySearchTreeNode *)getMaxNode:(AlgBinarySearchTreeNode *)node {
    if (self.firstNode == nil) {
        return nil;
    }
    if (node.rightNode) {
        return [self getMaxNode:node.rightNode];
    }
    else {
        NSLog(@"最大---当前key ------ %@",node.key);
        return node;
    }
}

- (AlgBinarySearchTreeNode *)getMinNode:(AlgBinarySearchTreeNode *)node {
    if (self.firstNode == nil) {
        return nil;
    }
    if (node.leftNode) {
        return [self getMinNode:node.leftNode];
    }
    else {
        NSLog(@"最小---当前key ------ %@",node.key);
        return node;
    }
}

- (AlgBinarySearchTreeNode *)getValueByKey:(AlgBinarySearchTreeNode *)node key:(NSString *)key {
    if (node == nil) {
        NSLog(@"查找---当前node为空------返回nil");
        return nil;
    }
//    NSLog(@"查找---当前key ------ %@",node.key);
    AlgBinarySearchTreeNodeCompareStatus status = [self compareNode:node.key newNode:key];
    if (status == NodeLarger) {
        return [self getValueByKey:node.rightNode key:key];
    }
    else if (status == NodeSmaller) {
        return [self getValueByKey:node.leftNode key:key];
    }
    else {
        return node;
    }
}

- (void)addNode:(AlgBinarySearchTreeNode *)newNode {
    if ([newNode.key isEqualToString:@"10"]) {
        NSLog(@"");
    }
    AlgBinarySearchTreeNodeCompareStatus status = [self compareNode:self.headNode.key newNode:newNode.key];
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

- (AlgBinarySearchTreeNodeCompareStatus)compareNode:(NSString *)nodeKey newNode:(NSString *)newNodeKey {
    AlgBinarySearchTreeNodeCompareStatus status;
    if ([nodeKey compare:newNodeKey] == NSOrderedAscending) {
        status = NodeLarger;
    }
    else if ([nodeKey compare:newNodeKey] == NSOrderedDescending) {
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
//    NSLog(@"depth --- %ld",[self getMaxDepth:self.firstNode]);
    
    
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
