//
//  AlgMapEntrance.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/8/14.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "AlgGraphEntrance.h"
#import "AlgGraph.h"
#import "AlgDepthFirstSearch.h"

@implementation AlgGraphEntrance

- (void)entrance {
    //图4.19的例子，造一个一样的
    AlgGraph *graph = [[AlgGraph alloc] initWithVertexCount:13];
    //////////////////////// 0~6是一个闭环的图
    //0
    [graph addEdgeWithStartVertext:0 endVertex:1];
    [graph addEdgeWithStartVertext:0 endVertex:2];
    [graph addEdgeWithStartVertext:0 endVertex:5];
    [graph addEdgeWithStartVertext:0 endVertex:6];
    //1
    [graph addEdgeWithStartVertext:1 endVertex:0];
    //2
    [graph addEdgeWithStartVertext:2 endVertex:0];
    //3
    [graph addEdgeWithStartVertext:3 endVertex:4];
    [graph addEdgeWithStartVertext:3 endVertex:5];
    //4
    [graph addEdgeWithStartVertext:4 endVertex:3];
    [graph addEdgeWithStartVertext:4 endVertex:5];
    [graph addEdgeWithStartVertext:4 endVertex:6];
    //5
    [graph addEdgeWithStartVertext:5 endVertex:0];
    [graph addEdgeWithStartVertext:5 endVertex:3];
    [graph addEdgeWithStartVertext:5 endVertex:4];
    //6
    [graph addEdgeWithStartVertext:6 endVertex:0];
    [graph addEdgeWithStartVertext:6 endVertex:4];
    //////////////////////// 7~8是一个闭环的图
    //7
    [graph addEdgeWithStartVertext:7 endVertex:8];
    //8
    [graph addEdgeWithStartVertext:8 endVertex:7];
    //////////////////////// 9~12是一个闭环的图
    //9
    [graph addEdgeWithStartVertext:9 endVertex:10];
    [graph addEdgeWithStartVertext:9 endVertex:11];
    [graph addEdgeWithStartVertext:9 endVertex:12];
    //10
    [graph addEdgeWithStartVertext:10 endVertex:9];
    //11
    [graph addEdgeWithStartVertext:11 endVertex:9];
    [graph addEdgeWithStartVertext:11 endVertex:12];
    //12
    [graph addEdgeWithStartVertext:12 endVertex:9];
    [graph addEdgeWithStartVertext:12 endVertex:11];
    
    NSLog(@"%@",graph);
    NSLog(@"%ld",[graph vertextCount]);
    NSLog(@"%ld",[graph edgeCount]);
    NSLog(@"%@",[graph allNearbyVertext:12]);
}


@end
