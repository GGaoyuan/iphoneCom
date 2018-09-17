//
//  BaseViewController.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/9/17.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "EntranceViewController.h"

@interface EntranceViewController ()

@property (nonatomic, strong) UILabel *titleLabel;

@end

@implementation EntranceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self initSubviews];
    
}

- (void)initSubviews {
    self.titleLabel = ({
        UILabel *label = [UILabel new];
        label.backgroundColor = [UIColor yellowColor];
        label.font = [UIFont boldSystemFontOfSize:22];
        label.text = @"Test";
        label.textColor = [UIColor blackColor];
        label.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:label];
        label;
    });
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    self.titleLabel.frame = CGRectMake(0, 0, 100, 100);
}

@end
