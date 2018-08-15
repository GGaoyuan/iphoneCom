//
//  AlgDepthFirstSearch.h
//  iphoneCom
//
//  Created by gaoyuan on 2018/8/14.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AlgGraph.h"


/**
 深度优先算法是将访问的顶点标记为已访问
 递归的访问他的左右没有被标记过的邻居顶点
 */

@interface AlgDepthFirstSearch : NSObject

- (instancetype)initWithGraph:(AlgGraph *)graph origin:(NSNumber *)origin destination:(NSNumber *)destination;

- (void)searchPath;

@end
