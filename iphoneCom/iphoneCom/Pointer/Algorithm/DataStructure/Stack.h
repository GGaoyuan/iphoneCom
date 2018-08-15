//
//  Stack.h
//  iphoneCom
//
//  Created by gaoyuan on 2018/8/15.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 用MutableArray模拟出的栈
 */
@interface Stack : NSObject

@property (nonatomic, assign) NSInteger count;

+ (Stack *)stack;

+ (Stack *)stackWithArray:(NSArray *)array;

- (void)push:(id)obj;

- (void)pop;

- (void)popFrom:(id)obj;

- (id)top;

- (id)bottom;

- (void)printLog;

@end
