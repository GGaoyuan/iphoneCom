//
//  AlgorithmTool.h
//  iphoneCom
//
//  Created by gaoyuan on 2018/6/25.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AlgorithmTool : NSObject

+ (void)calculateAlgorithmTime:(void(^)(void))algorithm;

+ (void)show:(NSArray *)array;

@end
