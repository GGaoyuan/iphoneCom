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

typedef void(^callBack)(int);

@interface BlockEntrance ()

@end

@implementation BlockEntrance


- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"block");
    
    
    
    __block int a = 10;
    void (^blk)(void) = ^void (void) {
        NSLog(@"%d",a);
    };
    a = 20;
    NSLog(@"%d",a);
    blk();
}




@end
