//
//  YDRequest.h
//  iphoneCom
//
//  Created by gaoyuan on 2018/7/12.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef enum : NSUInteger {
    YDRequestTypePost,
    YDRequestTypeGet,
} YDRequestType;

/**
 记得在block结束后设为nil防止self的循环引用
 */
@interface YDRequest : NSObject

@property (nonatomic, copy, readonly) NSString *url;

@property (nonatomic, copy) NSString *message;


- (YDRequestType)requestType;

- (NSDictionary *)requestParams;

- (NSString *)requestUrl;

- (NSString *)requestDomain;

- (BOOL)useCacheWithTime:(NSInteger)second;

@end
