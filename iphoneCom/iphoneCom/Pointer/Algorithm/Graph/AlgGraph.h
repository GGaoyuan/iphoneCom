//
//  AlgGraph.h
//  iphoneCom
//
//  Created by gaoyuan on 2018/8/14.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AlgGraph : NSObject

- (instancetype)initWithVertexCount:(NSInteger)count;

- (NSInteger)vertextCount;

- (NSInteger)edgeCount;

- (void)addEdgeWithStartVertext:(NSInteger)startVertext endVertex:(NSInteger)endVertext;

- (NSArray *)nearbyVertext:(NSInteger)vertext;

@end
