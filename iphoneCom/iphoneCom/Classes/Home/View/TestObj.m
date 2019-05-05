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
    //value表示有几个资源可以访问,正常的使用顺序是先降低然后再提高(先wait再signal)，这两个函数通常成对使用
    dispatch_semaphore_t sem = dispatch_semaphore_create(3);
    for (NSInteger index = 0; index < 20; index++) {
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            dispatch_semaphore_wait(sem, DISPATCH_TIME_FOREVER);
            userInfo.age++;
            NSLog(@"thread: %@ --- Total: %ld", [NSThread currentThread], userInfo.age);
            userInfo.age--;
            NSLog(@"thread: %@ --- Total: %ld", [NSThread currentThread], userInfo.age);
            NSLog(@"thread: %@ --- Complete ", [NSThread currentThread]);
            dispatch_semaphore_signal(sem);
        });
    }
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
    });
}

@end
