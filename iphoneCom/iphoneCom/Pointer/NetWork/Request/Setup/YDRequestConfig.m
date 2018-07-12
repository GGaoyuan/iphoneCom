//
//  YDRequestConfig.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/7/12.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "YDRequestConfig.h"

static YDRequestConfig *_config;

@implementation YDRequestConfig

+ (instancetype)requestConfig {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
    
    });
    
    return _config;
}

@end
