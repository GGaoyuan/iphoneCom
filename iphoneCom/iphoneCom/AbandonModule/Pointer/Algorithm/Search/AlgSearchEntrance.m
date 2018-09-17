//
//  AlgSearchEntrance.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/7/3.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "AlgSearchEntrance.h"

#import "AlgBinarySearchTree.h"
#import "AlgRedBlackTree.h"
#import "AlgHashTable.h"

@implementation AlgSearchEntrance

- (void)search {
//    AlgRedBlackTree *rbTree = [[AlgRedBlackTree alloc] init];
//    [rbTree putKey:@"" value:@""];
    
    AlgHashTable *hashTable = [AlgHashTable new];
    NSLog(@"%@",hashTable);
    
    NSObject *obj1 = [NSObject new];
    NSObject *obj2 = [NSObject new];
    NSObject *obj3 = [NSObject new];
    NSObject *obj4 = [NSObject new];
    NSObject *obj5 = [NSObject new];
    
    NSLog(@"%@ ----- %ld",obj1, obj1.hash);
    NSLog(@"%@ ----- %ld",obj2, obj2.hash);
    NSLog(@"%@ ----- %ld",obj3, obj3.hash);
    NSLog(@"%@ ----- %ld",obj4, obj4.hash);
    NSLog(@"%@ ----- %ld",obj5, obj5.hash);
    
    NSLog(@"---------");
    
    NSString *test1 = @"123";
    NSString *test2 = @"1234";
    NSString *test3 = @"1235";
    NSLog(@"%@ ----- %ld",test1, test1.hash);
    NSLog(@"%@ ----- %ld",test2, test2.hash);
    NSLog(@"%@ ----- %ld",test3, test3.hash);
    NSLog(@"%@ ----- %ld",test1, test1.hash);
}

- (void)binarySearchTreeTest {
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
}

@end
