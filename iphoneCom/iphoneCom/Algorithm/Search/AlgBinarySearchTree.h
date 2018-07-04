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

@interface AlgBinarySearchTree : NSObject

@property (nonatomic, assign) NSInteger count;

- (void)putKey:(NSString *)key value:(id<NSObject>)value;

- (id<NSObject>)getValueByKey:(NSString *)key;

- (void)show:(UIView *)view;

@end
