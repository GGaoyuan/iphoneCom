//
//  AlgorithmTool.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/6/25.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "AlgorithmTool.h"

@implementation AlgorithmTool

+ (void)calculateAlgorithmTime:(void(^)(void))algorithm {
    CFAbsoluteTime startTime = CFAbsoluteTimeGetCurrent();
    if (algorithm) {
        algorithm();
    }
    CFAbsoluteTime linkTime = (CFAbsoluteTimeGetCurrent() - startTime);
    NSLog(@"Algorithm Spend Time %f ms", linkTime *1000.0);
}

@end
