//
//  AlgDepthFirstSearch.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/8/14.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "AlgDepthFirstSearch.h"

@interface AlgDepthFirstSearch()

@property (nonatomic, strong) NSMutableArray<NSNumber *> *marked;

@property (nonatomic, assign) NSInteger count;

@end

@implementation AlgDepthFirstSearch

//找到和source顶点所有联通的顶点
- (instancetype)initWithGraph:(AlgGraph *)graph source:(NSInteger)source {
    self = [super init];
    if (self) {
        
    }
    return self;
}

//vertex和source顶点是联通的吗
- (BOOL)marked:(NSInteger)vertext {
    return [self.marked[vertext] boolValue];
}

//与source顶点联通的个数
- (NSInteger)count {
    return 10;
}

- (NSMutableArray<NSNumber *> *)marked {
    if (!_marked) {
        _marked = [NSMutableArray array];
    }
    return _marked;
}

@end
