
//  YDHomeViewController.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/6/25.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "YDHomeViewController.h"
#import "YDDatabaseTool.h"
#import "TestObject.h"
#import "MobClick.h"
#import "MobClickHelper.h"

@interface YDHomeViewController ()

@property (nonatomic, strong) NSObject *test;

@end

@implementation YDHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"home";
    self.view.backgroundColor = [UIColor redColor];
    
    
    
    UIButton *button = ({
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setTitle:@"UmengTest" forState:UIControlStateNormal];
        button.backgroundColor = [UIColor yellowColor];
        button.titleLabel.font = [UIFont systemFontOfSize:12];
        [button addTarget:self action:@selector(testAction) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
        button;
    });
    button.frame = CGRectMake(0, 70, 100, 100);
    
    TestObject *test = [TestObject new];
    test.integer = 1;
    test.string = @"string";
    test.number = @(3);
    
//    [MobClickHelper load];
    
    NSDictionary *dic = [YDDatabaseTool formatQueryModel:test blackList:@[@"integer"] maper:@{@"string":@"test"}];
//    NSLog(@"%@",dic);
    
}


- (void)testAction {

    [MobClick event:@"gaoyuan"];
}

- (void)request {
    self.test = [NSObject new];
//    printf("retain count = %ld\n",CFGetRetainCount((__bridge CFTypeRef)(self.test)));
    
    NSMutableArray *obj = [NSMutableArray array];
    printf("retain count = %ld\n",CFGetRetainCount((__bridge CFTypeRef)(obj)));
}

@end
