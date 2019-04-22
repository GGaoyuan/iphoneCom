//
//  IGYUserInfo.m
//  iphoneCom
//
//  Created by gaoyuan on 2019/4/22.
//  Copyright © 2019 gaoyuan. All rights reserved.
//

#import "IGYUserInfo.h"

@implementation IGYUserInfo

+ (instancetype)shareInstance {
    static IGYUserInfo *userInfo = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        userInfo = [IGYUserInfo new];
    });
    return userInfo;
}

@end
