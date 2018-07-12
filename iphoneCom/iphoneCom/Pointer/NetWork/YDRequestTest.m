//
//  YDRequestTest.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/7/12.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "YDRequestTest.h"

@implementation YDRequestTest

- (YDRequestType)requestType {
    return YDRequestTypeGet;
}

- (NSDictionary *)requestParams {
    return nil;
}

- (NSString *)requestUrl {
    return @"";
}

- (NSString *)requestDomain {
    return @"";
}

- (BOOL)useCacheWithTime:(NSInteger)second {
    return YES;
}


@end
