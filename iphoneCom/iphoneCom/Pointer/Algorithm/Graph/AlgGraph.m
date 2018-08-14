//
//  AlgGraph.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/8/14.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "AlgGraph.h"

@interface AlgGraph()

@property (nonatomic, assign) NSInteger vertexCount;
@property (nonatomic, assign) NSInteger edgeCount;
@property (nonatomic, strong) NSMutableArray *adj;//领接表

@end

#pragma mark - ---------- Public ----------

@implementation AlgGraph

- (instancetype)initWithVertexCount:(NSInteger)count {
    self = [super init];
    if (self) {
        self.vertexCount = count;
        self.edgeCount = 0;
        self.adj = [NSMutableArray arrayWithCapacity:self.vertexCount];
        for (int i = 0; i < self.vertexCount; i++) {
            self.adj[i] = [NSMutableArray array];
        }
    }
    return self;
}

- (NSInteger)vertextCount {
    return _vertexCount;
}

- (NSInteger)edgeCount {
    return _edgeCount;
}

- (void)addEdgeWithStartVertext:(NSInteger)startVertext endVertex:(NSInteger)endVertext {
    [self.adj[startVertext] addObject:@(endVertext)];
//    [self.adj[endVertext] addObject:@(startVertext)];
    self.edgeCount++;
}

- (NSArray *)allNearbyVertext:(NSInteger)vertext {
    return self.adj[vertext];
}



@end
