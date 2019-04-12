//
//  TestObject.m
//  iphoneCom
//
//  Created by gaoyuan on 2019/3/12.
//  Copyright © 2019 gaoyuan. All rights reserved.
//

#import "TestObject.h"

@implementation TestObject

- (instancetype)init {
    self = [super init];
    if (self) {
        NSLog(@"TestObject init");
    }
    return self;
}

- (void)dealloc {
    NSLog(@"TestObject dealloc");
}

@end
