//
//  AlgDepthFirstSearch.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/8/14.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "AlgDepthFirstSearch.h"
#import "Stack.h"

@interface AlgDepthFirstSearch()

//入口
@property (nonatomic, assign) NSNumber *origin;
//终点
@property (nonatomic, assign) NSNumber *destination;
//要处理的图
@property (nonatomic, strong) AlgGraph *graph;

@property (nonatomic, strong) Stack *currentPath;

@end

@implementation AlgDepthFirstSearch

- (instancetype)initWithGraph:(AlgGraph *)graph origin:(NSNumber *)origin destination:(NSNumber *)destination {
    self = [super init];
    if (self) {
        self.origin = origin;
        self.destination = destination;
        self.graph = graph;
    }
    return self;
}

- (void)searchPath {
    NSArray *nearbyVertexs = [self.graph nearbyVertext:[self.origin integerValue]];
    
    NSLog(@"当前要找路径的vertex --- %@", self.origin);
    for (NSNumber *vertext in nearbyVertexs) {
        NSLog(@"                %@",vertext);
    }
    
    NSInteger visitVertexCount = 0;
    for (NSNumber *vertext in nearbyVertexs) {
        if ([vertext integerValue] == [self.destination integerValue]) {
            [self.currentPath push:vertext];
            [self fetchCurrentPath];
            return;
        }
        if ([vertext integerValue] == [self.origin integerValue]) {
            visitVertexCount++;
            if (visitVertexCount == nearbyVertexs.count) {
                NSLog(@"****倒退");
                return;
            }
            else {
                self.origin = vertext;
                [self searchPath];
                continue;
            }
        }
    }
    
    [self fetchCurrentPath];
}

- (void)fetchCurrentPath {
    if (self.currentPath.count == 0) {
        NSLog(@"当前路径:空");
        return;
    }
    NSString *string = @"当前路径:";
    for (int i = 0; i < self.currentPath.count; i++) {
        NSNumber *vertext = self.currentPath[i];
        if (i == 0) {
            string = [NSString stringWithFormat:@"%@%@", string, vertext];
        }
        else {
            string = [NSString stringWithFormat:@"%@ ---> %@", string, vertext];
        }
    }
    NSLog(@"%@",string);
}

#pragma mark - ---------- Private ----------

- (NSMutableArray *)currentPath {
    if (!_currentPath) {
        _currentPath = [NSMutableArray array];
    }
    return _currentPath;
}

@end
