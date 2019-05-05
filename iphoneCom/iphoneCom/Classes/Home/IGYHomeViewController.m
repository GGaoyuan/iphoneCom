//
//  IGYHomeViewController.m
//  iphoneCom
//
//  Created by gaoyuan on 2019/4/12.
//  Copyright © 2019 gaoyuan. All rights reserved.
//

#import "IGYHomeViewController.h"
#import "IGYUserInfo.h"
#import "TestObj.h"
@interface IGYHomeViewController ()

@end

@implementation IGYHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self testButtonInitialize];
//    [TestObj test];
//    [self threadSafe];
}

- (void)threadSafe {
    IGYUserInfo *userInfo = [IGYUserInfo shareInstance];
    NSLock *lock = [NSLock new];
    for (NSInteger index = 0; index < 20; index++) {
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            [lock lock];
            userInfo.age++;
            NSLog(@"Controller: %ld", userInfo.age);
            userInfo.age--;
            NSLog(@"Controller: %ld", userInfo.age);
            [lock unlock];
        });
    }
}

- (void)lock2 {
    dispatch_semaphore_t semaphone = dispatch_semaphore_create(0);
    NSLog(@"start");
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSLog(@"async");
        sleep(5);
        dispatch_semaphore_signal(semaphone);
    });
    dispatch_semaphore_wait(semaphone, DISPATCH_TIME_FOREVER);
    NSLog(@"end");
}

- (void)testButtonInitialize {
    UIButton *button = ({
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setTitle:@"TestButton" forState:UIControlStateNormal];
        button.backgroundColor = [UIColor redColor];
        button.titleLabel.font = [UIFont systemFontOfSize:11];
        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(testButtonClick) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
        button;
    });
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(100, 100));
        make.left.mas_equalTo(0);
        make.top.mas_equalTo(100);
    }];
}

- (void)testButtonClick {
    NSLog(@"click");
}

@end
