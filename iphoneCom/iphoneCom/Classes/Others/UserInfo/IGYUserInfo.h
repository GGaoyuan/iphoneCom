//
//  IGYUserInfo.h
//  iphoneCom
//
//  Created by gaoyuan on 2019/4/22.
//  Copyright © 2019 gaoyuan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface IGYUserInfo : NSObject

+ (instancetype)shareInstance;

@property (nonatomic, assign) NSInteger age;

@end

NS_ASSUME_NONNULL_END
