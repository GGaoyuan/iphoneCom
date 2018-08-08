//
//  MobClickHelper.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/7/25.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "MobClickHelper.h"
#import <objc/runtime.h>
#import <objc/message.h>
#import "MobClick.h"
#import "AFNetworking.h"



@implementation MobClickHelper

+ (void)load {
    
    Class originalClass = NSClassFromString(@"MobClick");
    SEL originalSelector = NSSelectorFromString(@"event:");
    Method originalMethod = class_getClassMethod(originalClass, originalSelector);
    IMP originalIMP = method_getImplementation(originalMethod);
    const char *originalType = method_getTypeEncoding(originalMethod);
    
    Class swizzledClass = [self class];
    SEL swizzledSelector = @selector(swizzledMethod:);
    Method swizzledMethod = class_getClassMethod(swizzledClass, swizzledSelector);
    IMP swizzledIMP = method_getImplementation(swizzledMethod);
    const char *swizzledType = method_getTypeEncoding(swizzledMethod);
    
    Class metaClass = objc_getMetaClass(class_getName(originalClass));
    class_replaceMethod(metaClass, swizzledSelector, originalIMP, originalType);
    class_replaceMethod(metaClass, originalSelector, swizzledIMP, swizzledType);
}

+ (void)swizzledMethod:(NSString *)event {
    AFNetworkReachabilityManager *manager = [AFNetworkReachabilityManager sharedManager];
    switch (manager.networkReachabilityStatus) {
        case AFNetworkReachabilityStatusUnknown:
        case AFNetworkReachabilityStatusNotReachable:
            [MobClickHelper saveMobClickEvent:event];
            return;
        case AFNetworkReachabilityStatusReachableViaWWAN:
        case AFNetworkReachabilityStatusReachableViaWiFi:
            [self swizzledMethod:event];
            return;
        default:
            break;
    }
}

+ (void)saveMobClickEvent:(NSString *)event {
    NSArray *archieveArray = [NSKeyedUnarchiver unarchiveObjectWithFile:YDMobClickFilePath];;
    
    NSMutableArray *array = [NSMutableArray arrayWithArray:archieveArray];
    [array addObject:event];
    
    [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"%ld --- %@",idx,array[idx]);
    }];
    
    [NSKeyedArchiver archiveRootObject:array toFile:YDMobClickFilePath];
    NSLog(@"----------");
}

@end
