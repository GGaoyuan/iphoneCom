//
//  YDDatabaseTool.h
//  iphoneCom
//
//  Created by gaoyuan on 2018/7/16.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YDDatabaseTool : NSObject

+ (NSDictionary *)formatQueryModel:(id)model blackList:(NSArray<NSString *> *)blackList maper:(NSDictionary<NSString *,NSString *> *)maper;

@end
