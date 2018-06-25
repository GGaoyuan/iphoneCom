//
//  ViewController.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/6/20.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSArray *array = @[@(8),@(9),@(1),@(7),@(2),@(3),@(5),@(4),@(6),@(0)];
    NSArray *array = @[@(3),@(5),@(1),@(6),@(0),@(8),@(9),@(4),@(7),@(2)];
    //间隔/分组数目
    NSInteger h = array.count / 4;
    NSLog(@"一共有%ld组",h);
    for (NSInteger i = 0; i < array.count; i++) {
        for (NSInteger j = 0; j < array.count; i++) {
            
            if (i + h > array.count) {
                break;
            }
        }
    }
    NSLog(@"------------");
    
}



@end
