//
//  AlgSequentialSearchList.h
//  iphoneCom
//
//  Created by gaoyuan on 2018/7/3.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AlgSearchNode.h"
#import <UIKit/UIKit.h>


/**
 搜索二叉树的速度取决于树的形状，而形状又取决于插入顺序，平衡的速度是最好的
 */


/**
 其实这玩意也是排序二叉树，中序遍历就是排序！！！如果只有右节点或者左节点，他就是一个链表
 */

@interface AlgBinarySearchTree : NSObject

@property (nonatomic, assign) NSInteger count;

- (void)putKey:(NSString *)key value:(id<NSObject>)value;

- (AlgBinarySearchTreeNode *)getValueByKey:(NSString *)key;

- (AlgBinarySearchTreeNode *)getMaxNode;

- (AlgBinarySearchTreeNode *)getMinNode;

- (void)show:(UIView *)view;

- (void)deleteWithKey:(NSString *)key;


/**
 中序遍历
 */
- (void)midEnum;

@end
