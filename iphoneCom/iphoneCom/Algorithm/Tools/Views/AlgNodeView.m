//
//  AlgNodeView.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/7/4.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "AlgNodeView.h"
#import "YDMacro.h"

@interface AlgNodeView()

@property (nonatomic, strong) UILabel *label;

@property (nonatomic, copy) NSString *nodeText;

@end

@implementation AlgNodeView

- (instancetype)initWithFrame:(CGRect)frame text:(NSString *)nodeText {
    self = [super initWithFrame:frame];
    if (self) {
        self.nodeText = nodeText;
        self.backgroundColor = [UIColor cyanColor];
        self.label = ({
            UILabel *label = [UILabel new];
            label.backgroundColor = [UIColor greenColor];
            label.font = [UIFont systemFontOfSize:11];
            label.text = self.nodeText;
            label.textColor = [UIColor blackColor];
            label.textAlignment = NSTextAlignmentCenter;
            [self addSubview:label];
            label;
        });
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    CGFloat width = self.frame.size.width - 10;
    CGFloat height = self.frame.size.height;
    
    self.label.frame = CGRectMake(5, 0, width, height);
}

@end
