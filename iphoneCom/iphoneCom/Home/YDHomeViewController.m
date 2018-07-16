
//  YDHomeViewController.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/6/25.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "YDHomeViewController.h"
#import "YDDatabaseTool.h"
#import "TestObject.h"

@interface YDHomeViewController ()

@property (nonatomic, strong) NSObject *test;

@end

@implementation YDHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"home";
    self.view.backgroundColor = [UIColor redColor];
    
    TestObject *test = [TestObject new];
    test.integer = 1;
    test.string = @"string";
    test.number = @(3);
    
    NSDictionary *dic = [YDDatabaseTool formatQueryModel:test blackList:nil maper:nil];
//    NSLog(@"%@",dic);
    
}


- (void)request {
    self.test = [NSObject new];
//    printf("retain count = %ld\n",CFGetRetainCount((__bridge CFTypeRef)(self.test)));
    
    NSMutableArray *obj = [NSMutableArray array];
    printf("retain count = %ld\n",CFGetRetainCount((__bridge CFTypeRef)(obj)));
}

@end
