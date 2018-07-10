//
//  AlgSearchEntrance.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/7/3.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "AlgSearchEntrance.h"

#import "AlgBinarySearchTree.h"

@implementation AlgSearchEntrance

- (void)search {
    
    NSLog(@"二叉搜索树");
    
    AlgBinarySearchTree *binarySearchTree = [AlgBinarySearchTree new];
    
    [binarySearchTree putKey:@"7" value:@[@"7"]];
    [binarySearchTree putKey:@"8" value:@[@"8"]];
    [binarySearchTree putKey:@"9" value:@[@"9"]];
    [binarySearchTree putKey:@"3" value:@[@"3"]];
    [binarySearchTree putKey:@"1" value:@[@"1"]];
    [binarySearchTree putKey:@"5" value:@[@"5"]];
    [binarySearchTree putKey:@"0" value:@[@"0"]];
    [binarySearchTree putKey:@"2" value:@[@"2"]];
    [binarySearchTree putKey:@"4" value:@[@"4"]];
    [binarySearchTree putKey:@"6" value:@[@"6"]];
//    AlgBinarySearchTreeNode *result = [binarySearchTree getValueByKey:@"20"];
//    [binarySearchTree getMinNode];
//    [binarySearchTree getMaxNode];
//    [binarySearchTree deleteWithKey:@"3"];
    
    [binarySearchTree midEnum];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"binarySearchTreeShow" object:binarySearchTree];
    
}

@end
