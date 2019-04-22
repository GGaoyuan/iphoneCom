//
//  TestObj.m
//  iphoneCom
//
//  Created by gaoyuan on 2019/4/22.
//  Copyright © 2019 gaoyuan. All rights reserved.
//

#import "TestObj.h"
#import "IGYUserInfo.h"

@implementation TestObj

+ (void)test {
    [self threadSafe];
}

+ (void)threadSafe {
    IGYUserInfo *userInfo = [IGYUserInfo shareInstance];
    NSLock *lock = [NSLock new];
    for (NSInteger index = 0; index < 20; index++) {
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            [lock lock];
            userInfo.age++;
            NSLog(@"TestObj total: %ld", userInfo.age);
            userInfo.age--;
            NSLog(@"TestObj total: %ld", userInfo.age);
            [lock unlock];
        });
    }
}

@end
