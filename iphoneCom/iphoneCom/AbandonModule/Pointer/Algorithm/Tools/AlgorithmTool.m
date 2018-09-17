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
            if ([array[i] isKindOfClass:[NSObject class]]) {
                if (![array[i] isKindOfClass:[NSNumber class]]) {
                    continue;
                }
            }
            NSString *temp = [array[i] stringValue];
            result = [result stringByAppendingString:temp];
            result = [result stringByAppendingString:@","];
        }
    }
    NSLog(@"%@",result);
}

+ (NSMutableArray *)fetchRandomNumber:(NSInteger)min max:(NSInteger)max number:(NSInteger)num {
    NSMutableArray *numbers = [NSMutableArray arrayWithCapacity:num];
    for (int i = 0; i < num; i++) {
        NSInteger value = (min + (arc4random() % (max - min + 1)));
        [numbers addObject:@(value)];
    }
    return numbers;
}

@end
