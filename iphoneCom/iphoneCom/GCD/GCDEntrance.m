//
//  GCDEntrance.m
//  iphoneCom
//
//  Created by 高源 on 2018/7/10.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "GCDEntrance.h"

@interface GCDEntrance ()

@end

@implementation GCDEntrance

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@",[NSThread currentThread]);
    
    [self sync_c];
}

- (void)async_s {
    dispatch_queue_t sq = dispatch_queue_create("1", DISPATCH_QUEUE_SERIAL);
    dispatch_async(sq, ^{
        for (int i = 0; i < 5; i++) {
            NSLog(@"2----%d",i);
            NSLog(@"%@",[NSThread currentThread]);
        }
    });
    dispatch_async(sq, ^{
        for (int i = 0; i < 5; i++) {
            NSLog(@"3----%d",i);
            NSLog(@"%@",[NSThread currentThread]);
        }
    });
    dispatch_async(sq, ^{
        for (int i = 0; i < 5; i++) {
            NSLog(@"4----%d",i);
            NSLog(@"%@",[NSThread currentThread]);
        }
    });
}

- (void)async_c {
    dispatch_queue_t cq = dispatch_queue_create("1", DISPATCH_QUEUE_CONCURRENT);
    dispatch_async(cq, ^{
        for (int i = 0; i < 5; i++) {
            NSLog(@"2----%d",i);
            NSLog(@"%@",[NSThread currentThread]);
        }
    });
    dispatch_async(cq, ^{
        for (int i = 0; i < 5; i++) {
            NSLog(@"3----%d",i);
            NSLog(@"%@",[NSThread currentThread]);
        }
    });
    dispatch_async(cq, ^{
        for (int i = 0; i < 5; i++) {
            NSLog(@"4----%d",i);
            NSLog(@"%@",[NSThread currentThread]);
        }
    });
}

- (void)sync_s {
    dispatch_queue_t sq = dispatch_queue_create("1", DISPATCH_QUEUE_SERIAL);
    dispatch_sync(sq, ^{
        for (int i = 0; i < 5; i++) {
            NSLog(@"2----%d",i);
            NSLog(@"%@",[NSThread currentThread]);
        }
    });
    dispatch_sync(sq, ^{
        for (int i = 0; i < 5; i++) {
            NSLog(@"3----%d",i);
            NSLog(@"%@",[NSThread currentThread]);
        }
    });
    dispatch_sync(sq, ^{
        for (int i = 0; i < 5; i++) {
            NSLog(@"4----%d",i);
            NSLog(@"%@",[NSThread currentThread]);
        }
    });
}

- (void)sync_c {
    dispatch_queue_t cq = dispatch_queue_create("1", DISPATCH_QUEUE_CONCURRENT);
    dispatch_sync(cq, ^{
        for (int i = 0; i < 5; i++) {
            NSLog(@"2----%d",i);
            NSLog(@"%@",[NSThread currentThread]);
        }
    });
    dispatch_sync(cq, ^{
        for (int i = 0; i < 5; i++) {
            NSLog(@"3----%d",i);
            NSLog(@"%@",[NSThread currentThread]);
        }
    });
    dispatch_sync(cq, ^{
        for (int i = 0; i < 5; i++) {
            NSLog(@"4----%d",i);
            NSLog(@"%@",[NSThread currentThread]);
        }
    });
}

@end
