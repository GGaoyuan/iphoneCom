//
//  BaseViewController.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/9/17.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "EntranceViewController.h"
#import "EntranceScrollView.h"


@interface EntranceViewController ()

@property (nonatomic, strong) EntranceScrollView *scrollView;

@end

@implementation EntranceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.scrollView = [[EntranceScrollView alloc] initWithFrame:self.view.bounds data:nil];
    self.scrollView.backgroundColor = [UIColor cyanColor];
    self.scrollView.contentSize = CGSizeMake(0, ScreenHeight * 2);
    [self.view addSubview:self.scrollView];
    
}



@end
