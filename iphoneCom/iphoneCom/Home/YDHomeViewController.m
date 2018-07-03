
//  YDHomeViewController.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/6/25.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "YDHomeViewController.h"

@interface YDHomeViewController ()

@property (nonatomic, strong) NSObject *test;

@end

@implementation YDHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"home";
    self.view.backgroundColor = [UIColor redColor];
    
    
    
//    printf("retain count = %ld\n",CFGetRetainCount((__bridge CFTypeRef)(self.test)));
    [self request];
//    printf("retain count = %ld\n",CFGetRetainCount((__bridge CFTypeRef)(self.test)));
}


- (void)request {
    self.test = [NSObject new];
//    printf("retain count = %ld\n",CFGetRetainCount((__bridge CFTypeRef)(self.test)));
    
    NSMutableArray *obj = [NSMutableArray array];
    printf("retain count = %ld\n",CFGetRetainCount((__bridge CFTypeRef)(obj)));
}

@end
