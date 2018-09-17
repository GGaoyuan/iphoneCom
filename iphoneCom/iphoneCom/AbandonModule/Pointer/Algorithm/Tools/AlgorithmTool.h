//
//  AlgorithmTool.h
//  iphoneCom
//
//  Created by gaoyuan on 2018/6/25.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AlgorithmTool : NSObject


/**
 计算时间

 @param algorithm 算法调用在block里
 */
+ (void)calculateAlgorithmTime:(void(^)(void))algorithm;


/**
 打印出数组的所有元素

 @param array 要打印的数组
 */
+ (void)show:(NSArray *)array;


/**
 获取一个装有随机数的数组

 @param min 最小的数
 @param max 最大的数
 @param num 要多少个数字
 @return 返回一个可变数组
 */
+ (NSMutableArray *)fetchRandomNumber:(NSInteger)min max:(NSInteger)max number:(NSInteger)num;

@end
