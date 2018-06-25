//
//  AlgorithmEntrance.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/6/25.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "AlgorithmEntrance.h"
#import "AlgorithmTool.h"

@interface AlgorithmEntrance ()

@end

@implementation AlgorithmEntrance

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"4TH";
    
    
    [AlgorithmTool calculateAlgorithmTime:^{
        for (NSInteger i = 0; i < 1000000000; i ++) {
            int i = 0;
            i = i + 1;
        }
    }];
    
}

@end
