//
//  EMCHomeViewController.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/9/17.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "EMCHomeViewController.h"

@interface EMCHomeViewController ()

@end

@implementation EMCHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *lable = ({
        UILabel *label = [UILabel new];
        label.backgroundColor = [UIColor whiteColor];
        label.font = [UIFont systemFontOfSize:12];
        label.text = @"EMCController";
        label.textColor = [UIColor blackColor];
        label.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:label];
        label;
    });
    lable.frame = CGRectMake(100, 100, 100, 100);
}


@end
