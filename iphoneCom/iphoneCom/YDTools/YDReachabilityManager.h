//
//  YDReachabilityManager.h
//  iphoneCom
//
//  Created by gaoyuan on 2018/7/25.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    YDReachabilityNetType4G,
    YDReachabilityNetTypeWiFi,
    YDReachabilityNetTypeNo,
} YDReachabilityNetType;

@interface YDReachabilityManager : NSObject

+ (YDReachabilityManager *)manager;

- (YDReachabilityNetType)reachableType;

- (void)setReachabilityNetType:(YDReachabilityNetType *)type;

@end
