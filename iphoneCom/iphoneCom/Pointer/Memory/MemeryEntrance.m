//
//  MemeryEntrance.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/8/15.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "MemeryEntrance.h"
#import "RetainCountObject.h"

@interface MemeryEntrance ()

@property (nonatomic, strong) RetainCountObject *obj;

@end

@implementation MemeryEntrance

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    RetainCountObject *obj = [RetainCountObject new];
//    obj = nil;
    [obj testMethod];
//    NSLog(@"234");
}

- (void)test {

}

@end
