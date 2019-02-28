//
//  RetainCountObject.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/8/16.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "RetainCountObject.h"

@interface RetainCountObject()

@end

@implementation RetainCountObject

- (void)testMethod {
    
    NSThread *thread = [NSThread currentThread];
    NSLog(@"%@",thread);
    
    CFRunLoopGetMain();
}

- (void)dealloc {
    NSLog(@"123%@",self);
    NSLog(@"");
//    printf("dealloc retain count = %ld\n",CFGetRetainCount((__bridge CFTypeRef)(self)));
}

@end
