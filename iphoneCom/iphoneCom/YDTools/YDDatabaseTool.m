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

+ (NSDictionary *)formatQueryModel:(id)model blackList:(NSArray<NSString *> *)blackList maper:(NSDictionary<NSString *,NSString *> *)maper {
    if (model == nil) {
        return nil;
    }
    NSMutableDictionary *dic = [YDDatabaseTool modelToKeyValueDic:model].mutableCopy;
    NSMutableArray *keyArray = dic[@"key"];
    NSMutableArray *valueArray = dic[@"value"];
    
    if (blackList.count) {
        
    }
    
    return dic;
}


#pragma mark - Private

+ (NSDictionary *)modelToKeyValueDic:(id)obj {
    NSMutableArray *keyArray = [NSMutableArray array];
    NSMutableArray *valueArray = [NSMutableArray array];
    unsigned int outCount, i;
    objc_property_t *properties = class_copyPropertyList([obj class], &outCount);
    for (i = 0; i < outCount; i++) {
        const char* propertyName = property_getName(properties[i]);
        NSString *propertyStr = [NSString stringWithUTF8String:propertyName];
        id propertyValue = [obj valueForKey:(NSString *)propertyStr];
        if (propertyValue) {
            [keyArray addObject:propertyStr];
            [valueArray addObject:propertyValue];
        }
    }
    free(properties);
    return @{@"key":keyArray, @"value":valueArray};
}

- (NSDictionary *)dicFromObject:(id)object {
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    unsigned int count;
    objc_property_t *propertyList = class_copyPropertyList([object class], &count);
    for (int i = 0; i < count; i++) {
        objc_property_t property = propertyList[i];
        const char *cName = property_getName(property);
        NSString *name = [NSString stringWithUTF8String:cName];
        NSObject *value = [object valueForKey:name];//valueForKey返回的数字和字符串都是对象
        if ([value isKindOfClass:[NSString class]] || [value isKindOfClass:[NSNumber class]]) {
            //string , bool, int ,NSinteger
            [dic setObject:value forKey:name];
        } else if ([value isKindOfClass:[NSArray class]] || [value isKindOfClass:[NSDictionary class]]) {
            //字典或字典
            [dic setObject:[self arrayOrDicWithObject:(NSArray*)value] forKey:name];
        } else if (value == nil) {
            //null
            //[dic setObject:[NSNull null] forKey:name];//这行可以注释掉?????
        } else {
            //model
            [dic setObject:[self dicFromObject:value] forKey:name];
        }
    }
    return [dic copy];
}
@end
