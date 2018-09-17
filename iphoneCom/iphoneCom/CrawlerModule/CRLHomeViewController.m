//
//  CRLHomeViewController.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/9/17.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "CRLHomeViewController.h"

@interface CRLHomeViewController ()

@end

@implementation CRLHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *lable = ({
        UILabel *label = [UILabel new];
        label.backgroundColor = [UIColor whiteColor];
        label.font = [UIFont systemFontOfSize:12];
        label.text = @"爬虫Controller";
        label.textColor = [UIColor blackColor];
        label.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:label];
        label;
    });
    lable.frame = CGRectMake(100, 100, 100, 100);
    
}


@end
