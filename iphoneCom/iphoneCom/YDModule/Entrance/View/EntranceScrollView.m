//
//  EntranceScrollView.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/9/17.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "EntranceScrollView.h"
#import "EntranceCardView.h"

@interface EntranceScrollView()

@property (nonatomic, strong) UILabel *titleLabel;

@property (nonatomic, strong) EntranceCardView *card1;
@property (nonatomic, strong) EntranceCardView *card2;
@property (nonatomic, strong) EntranceCardView *card3;
@property (nonatomic, strong) EntranceCardView *card4;

@end

@implementation EntranceScrollView

- (instancetype)initWithFrame:(CGRect)frame data:(NSDictionary *)data {
    self = [super initWithFrame:frame];
    if (self) {
        [self initSubviews];
    }
    return self;
}

- (void)initSubviews {
    self.titleLabel = ({
        UILabel *label = [UILabel new];
        label.backgroundColor = [UIColor whiteColor];
        label.font = [UIFont boldSystemFontOfSize:22];
        label.text = @"Test";
        label.textColor = [UIColor blackColor];
        label.textAlignment = NSTextAlignmentCenter;
        [self addSubview:label];
        label;
    });
    
    <#Name#> = ({
        UILabel *label = [UILabel new];
        label.backgroundColor = [UIColor whiteColor];
        label.font = [UIFont systemFontOfSize:<#font#>];
        label.text = <#text#>;
        label.textColor = <#Color#>;
        label.textAlignment = NSTextAlignmentCenter;
        [<#superView#> addSubview:label];
        label;
    });
    
}

- (void)layoutSubviews {
    [super layoutSubviews];
}

@end
