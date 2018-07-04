//
//  AlgSearchNode.h
//  iphoneCom
//
//  Created by gaoyuan on 2018/7/3.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import <Foundation/Foundation.h>

//@interface AlgSearchNode : NSObject
//
//@end

#pragma mark - ---------- AlgBinarySearchTreeNode ----------

@interface AlgBinarySearchTreeNode : NSObject

@property (nonatomic, copy) NSString *key;
@property id<NSObject> value;

@property (nonatomic, assign) NSInteger nodeCount;

@property (nonatomic, strong) AlgBinarySearchTreeNode *leftNode;

@property (nonatomic, strong) AlgBinarySearchTreeNode *rightNode;

@end

