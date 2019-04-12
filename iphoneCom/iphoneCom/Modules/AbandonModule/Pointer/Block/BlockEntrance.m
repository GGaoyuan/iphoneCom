//
//  BlockEntrance.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/7/10.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "BlockEntrance.h"
#import <objc/runtime.h>

typedef void(^blk)(void);
@interface BlockEntrance ()

@end

@implementation BlockEntrance

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    id obj = [self getBlockArray];
//    blk b = [obj objectAtIndex:0];
//    b();
}

//- (id)getBlockArray {
//    int val = 10;
//    return @[^{NSLog(@"1");}, ^{NSLog(@"2");}];
//}



@end
