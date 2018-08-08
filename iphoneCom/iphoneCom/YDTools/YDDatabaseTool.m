//
//  YDDatabaseTool.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/7/16.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "YDDatabaseTool.h"
#import <objc/runtime.h>

@implementation YDDatabaseTool

+ (NSDictionary *)formatQueryModel:(id)model blackList:(NSArray<NSString *> *)blackList maper:(NSDictionary<NSString *,NSString *> *)mapper {
    if (model == nil) {
        return nil;
    }
    NSMutableDictionary *dic = [YDDatabaseTool modelToDictionary:model];
    NSMutableArray *keys = [NSMutableArray array];
    NSMutableArray *values = [NSMutableArray array];
    if (blackList.count) {
        [blackList enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            NSString *blackName = blackList[idx];
            [dic removeObjectForKey:blackName];
        }];
    }
    if (mapper) {
        NSArray *mapperKeys = mapper.allKeys;
        NSArray *dicKeys = dic.allKeys;
        [mapperKeys enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            NSString *mapKey = mapperKeys[idx];
            if ([dicKeys containsObject:mapKey]) {
                id value = dic[mapKey];
                [dic removeObjectForKey:mapKey];
                [dic addEntriesFromDictionary:@{mapper[mapKey]:value}];
            }
        }];
    }
    [[dic allKeys] enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSString *key = [dic allKeys][idx];
        id value = [dic objectForKey:key];
        [keys addObject:key];
        [values addObject:value];
    }];
    [dic removeAllObjects];
    [dic setObject:keys forKey:@"key"];
    [dic setObject:values forKey:@"value"];
    return dic;
}


#pragma mark - Private

/**
 目前只支持对象属性为NSString，NSNumber的转换

 @param obj 传入的模型
 @return 字典
 */
+ (NSMutableDictionary *)modelToDictionary:(id)obj {
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    unsigned int count;
    objc_property_t *propertyList = class_copyPropertyList([obj class], &count);
    for (int i = 0; i < count; i++) {
        objc_property_t property = propertyList[i];
        const char *cName = property_getName(property);
        NSString *name = [NSString stringWithUTF8String:cName];
        NSObject *value = [obj valueForKey:name];
        //通常类型有：自定义对象，NSArray，NSDictionary，NSInteger,BOOL,CGFloat, NSNumber,NSString,
        if ([value isKindOfClass:[NSString class]] || [value isKindOfClass:[NSNumber class]]) {
            [dic setObject:value forKey:name];
        }
        else if (value == nil || [value isKindOfClass:[NSArray class]] || [value isKindOfClass:[NSDictionary class]]) {
            
        }
        else {
            
        }
    }
    return dic;
}

@end
