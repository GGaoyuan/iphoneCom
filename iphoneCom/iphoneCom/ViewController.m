//
//  ViewController.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/5/25.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "ViewController.h"
#import "YDAlertChainController.h"
#import "YDMacro.h"

typedef enum : NSUInteger {
    Unknow                = 0,
    LeftTop                 = 1 << 0,    //0000 0001
    LeftMid                 = 1 << 1,    //0000 0010
    LeftBottom          = 1 << 2,    //0000 0100
    RightTop              = 1 << 3,    //0000 1000
    RightMid              = 1 << 4,    //0001 0000
    RightBottom       = 1 << 5,    //0010 0000
    A1                            = 1 << 6,
    A2                           = 1 << 7,
    A3                            = 1 << 8,
    A4                            = 1 << 9,
    A5                            = 1 << 10,
    A6                            = 1 << 11,
    A7                            = 1 << 12,
} Type;

@interface ViewController ()

@property (nonatomic, strong) UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"");
    
    
    self.button  = ({
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setTitle:@"Normal" forState:UIControlStateNormal];

        [button addTarget:self action:@selector(button) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
        button;
    });
    
    Type orientationType = A1;
    NSLog(@"%ld",A7);
    [self recognize:orientationType];
    
    
}

- (void)test {
    
}

- (void)buttonAction {
    
}


- (void)recognize:(Type)type {
    BOOL a = RET_IF_CONFORMITY(type);
    if (type & LeftTop) {
        NSLog(@"LeftTop");
    }
    if (type & LeftMid) {
        NSLog(@"LeftMid");
    }
    if (type & LeftBottom) {
        NSLog(@"LeftBottom");
    }
    if (type & RightTop) {
        NSLog(@"RightTop");
    }
    if (type & RightMid) {
        NSLog(@"RightMid");
    }
    if (type & RightBottom) {
        NSLog(@"RightBottom");
    }
}

@end
