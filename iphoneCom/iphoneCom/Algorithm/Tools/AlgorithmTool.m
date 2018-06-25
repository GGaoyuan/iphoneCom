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

+ (void)show:(NSArray *)array {
    NSString *result = @"";
    for (NSInteger i = 0; i < array.count; i++) {
        if ([array[i] isKindOfClass:[NSString class]]) {
            result = [result stringByAppendingString:array[i]];
            result = [result stringByAppendingString:@","];
        }
        else {
            NSString *temp = [array[i] stringValue];
            result = [result stringByAppendingString:temp];
            result = [result stringByAppendingString:@","];
        }
    }
    NSLog(@"%@",result);
}

@end
