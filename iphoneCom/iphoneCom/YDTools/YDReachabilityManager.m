//
//  YDReachabilityManager.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/7/25.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "YDReachabilityManager.h"

@interface YDReachabilityManager()

@property (nonatomic, assign) YDReachabilityNetType type;

@end

@implementation YDReachabilityManager

static YDReachabilityManager *_manager = nil;

+ (YDReachabilityManager *)manager {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _manager = [[YDReachabilityManager alloc] init];
    });
    return _manager;;
}

- (YDReachabilityNetType)reachableType {
    return self.type;
}

- (void)setReachabilityNetType:(YDReachabilityNetType *)type {
    _type = type;
}

@end
