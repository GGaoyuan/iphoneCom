//
//  IGYMainViewController.m
//  iphoneCom
//
//  Created by gaoyuan on 2019/2/28.
//  Copyright © 2019 gaoyuan. All rights reserved.
//

#import "IGYMainViewController.h"
#import "TestObject.h"

@interface IGYMainViewController ()

@property (nonatomic, strong) UIButton *gaoyuanButton;
@property (nonatomic, strong) UIButton *shajiabangButton;

@property (nonatomic, strong) NSString *strongStr;
@property (nonatomic, copy) NSString *copyedStr;

@end

@implementation IGYMainViewController

- (void)test1 {
    dispatch_queue_t serial = dispatch_queue_create("111", DISPATCH_QUEUE_SERIAL);
    dispatch_async(serial, ^{
        for (int i = 0; i < 10; i++) {
            NSLog(@"1 - %d %@", i, [NSThread currentThread]);
        }
    });
    dispatch_async(serial, ^{
        for (int i = 0; i < 10; i++) {
            NSLog(@"2 - %d %@", i, [NSThread currentThread]);
        }
    });
    dispatch_async(serial, ^{
        for (int i = 0; i < 10; i++) {
            NSLog(@"3 - %d %@", i, [NSThread currentThread]);
        }
    });
}

- (void)test2 {
    dispatch_queue_t serial1 = dispatch_queue_create("111", DISPATCH_QUEUE_SERIAL);
    dispatch_sync(serial1, ^{
        for (int i = 0; i < 10; i++) {
            NSLog(@"1 - %d %@", i, [NSThread currentThread]);
        }
    });
    NSLog(@"jjjjjjjjjjjjjjjjj");
//    dispatch_queue_t serial2 = dispatch_queue_create("222", DISPATCH_QUEUE_SERIAL);
    dispatch_sync(serial1, ^{
        for (int i = 0; i < 10; i++) {
            NSLog(@"2 - %d %@", i, [NSThread currentThread]);
        }
    });
    NSLog(@"jjjjjjjjjjjjjjjjj");
//    dispatch_queue_t serial3 = dispatch_queue_create("333", DISPATCH_QUEUE_SERIAL);
    dispatch_sync(serial1, ^{
        for (int i = 0; i < 10; i++) {
            NSLog(@"3 - %d %@", i, [NSThread currentThread]);
        }
    });
    NSLog(@"kkkkkkkkkkkkkkkkk");
}

- (void)barried {
    dispatch_queue_t queue = dispatch_queue_create("111", DISPATCH_QUEUE_CONCURRENT);
    dispatch_async(queue, ^{
        for (int i = 0; i < 20; i++) {
            NSLog(@"1 - %@", [NSThread currentThread]);
        }
    });
    dispatch_async(queue, ^{
        for (int i = 0; i < 20; i++) {
            NSLog(@"2 - %@", [NSThread currentThread]);
        }
    });
    dispatch_async(queue, ^{
        for (int i = 0; i < 20; i++) {
            NSLog(@"3 - %@", [NSThread currentThread]);
        }
    });
    dispatch_barrier_sync(queue, ^{
        for (int i = 0; i < 20; i++) {
            NSLog(@"4 - %@", [NSThread currentThread]);
        }
    });
    dispatch_async(queue, ^{
        for (int i = 0; i < 20; i++) {
            NSLog(@"5 - %@", [NSThread currentThread]);
        }
    });
    dispatch_async(queue, ^{
        for (int i = 0; i < 20; i++) {
            NSLog(@"6 - %@", [NSThread currentThread]);
        }
    });
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    CAShapeLayer *layer = [CAShapeLayer new];
    layer.lineWidth = 10;
    layer.strokeColor = [UIColor redColor].CGColor;
    layer.fillColor = [UIColor clearColor].CGColor;
    CGFloat radius = 100;
    BOOL clockWise = true;
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:self.view.center radius:radius startAngle:(1.15 * M_PI) endAngle:1.85f*M_PI clockwise:clockWise];
    layer.path = [path CGPath];
    [self.view.layer addSublayer:layer];
    
    
    NSLog(@"method Will finish");
}

@end
