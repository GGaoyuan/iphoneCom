//
//  BlockEntrance.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/7/10.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "BlockEntrance.h"
#import "TestObject.h"
#import <objc/runtime.h>

typedef void(^test)(void);

@interface BlockEntrance ()

@end

@implementation BlockEntrance

int (^blk)(int) = ^int(int a) {
    a = a * 2;
    NSLog(@"block --- %d",a);
    return a;
};

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"block");
    
    int a = 10;
    
    
    NSLog(@"%d",blk(a));
    NSLog(@"%d",a);
}

- (void)test:(NSString *)test {
    test = @"2";
}

- (void)kkk:(NSDictionary *)obj {
    [obj setValue:@"2" forKey:@"2"];
}


@end
