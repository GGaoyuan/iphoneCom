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
    NSString *searchText = @"1111$先锋电子(SZ002767)$asd$(b)$5555$z()$2222$33$555$ddd$swsx33$西山煤电(SZ000983)$4444$美思德(SH603041)$";
    
//    NSString *regex = @"\\$([\u4e00-\u9fa5a-zA-Z0-9]+?)\\(([\u4e00-\u9fa5a-zA-Z0-9]+?)\\)\\$";
//    NSError *error;
//    NSRegularExpression *regular = [NSRegularExpression regularExpressionWithPattern:regex options:NSRegularExpressionCaseInsensitive error:&error];
//    if (error) return;
//
//    [regular enumerateMatchesInString:searchText options:NSMatchingReportCompletion range:NSMakeRange(0, searchText.length) usingBlock:^(NSTextCheckingResult * _Nullable result, NSMatchingFlags flags, BOOL * _Nonnull stop) {
//        NSRange matchRange = result.range;
//        //        NSLog(@"range:%@",NSStringFromRange(matchRange));
//        NSString *str = [searchText substringWithRange:matchRange];
//        NSLog(@"%@",str);
//    }];
    
        NSArray<NSString *> *parts = [self validateStocks:searchText];
    
    
    
    
        NSLog(@"%@", parts);
}

- (NSArray<NSString *> *)validateStocks:(NSString *)text {
        NSString *regex = @"\\$([\u4e00-\u9fa5a-zA-Z0-9]+?)\\(([\u4e00-\u9fa5a-zA-Z0-9]+?)\\)\\$";
        NSError *error;
        NSRegularExpression *regular = [NSRegularExpression regularExpressionWithPattern:regex options:NSRegularExpressionCaseInsensitive error:&error];
        if (error) nil;
        __block NSMutableArray *strArray = [NSMutableArray array];
        [regular enumerateMatchesInString:text options:NSMatchingReportCompletion range:NSMakeRange(0, text.length) usingBlock:^(NSTextCheckingResult * _Nullable result, NSMatchingFlags flags, BOOL * _Nonnull stop) {
            NSRange matchRange = result.range;
            [strArray addObject:[NSValue valueWithRange:matchRange]];
//            NSString *str = [text substringWithRange:matchRange];
//            NSLog(@"range:%@",NSStringFromRange(matchRange));
//            NSLog(@"%@",str);
        }];
    return strArray.copy;
}


@end
