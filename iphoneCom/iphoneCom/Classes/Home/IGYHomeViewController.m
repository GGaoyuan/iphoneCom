//
//  IGYHomeViewController.m
//  iphoneCom
//
//  Created by gaoyuan on 2019/4/12.
//  Copyright © 2019 gaoyuan. All rights reserved.
//

#import "IGYHomeViewController.h"

@interface IGYHomeViewController ()

@end

@implementation IGYHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
 
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake((ScreenWidth - 100) / 2, ScreenHeight - 100, 100, 50);
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

- (void)click {
    NSLog(@"click");
}

@end
