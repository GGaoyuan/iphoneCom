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
    
    AlgBinarySearchTree *binarySearchTree = [AlgBinarySearchTree new];
//    NSMutableArray *datas = @[@(2),@(5),@(1),@(3),@(0),@(6),@(4),@(9),@(7),@(10),@(8)].mutableCopy;
    [binarySearchTree putKey:@"6" value:@[@"6"]];
    [binarySearchTree putKey:@"2" value:@[@"2"]];
    [binarySearchTree putKey:@"5" value:@[@"5"]];
    [binarySearchTree putKey:@"1" value:@[@"1"]];
    [binarySearchTree putKey:@"3" value:@[@"3"]];
    [binarySearchTree putKey:@"0" value:@[@"0"]];
    [binarySearchTree putKey:@"4" value:@[@"4"]];
    [binarySearchTree putKey:@"9" value:@[@"9"]];
    [binarySearchTree putKey:@"7" value:@[@"7"]];
    [binarySearchTree putKey:@"10" value:@[@"10"]];
    [binarySearchTree putKey:@"8" value:@[@"8"]];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"binarySearchTreeShow" object:binarySearchTree];
    
}

@end
