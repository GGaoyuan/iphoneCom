//
//  YDAlertView.h
//  iphoneCom
//
//  Created by gaoyuan on 2018/5/28.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol YDAlertViewProtocol<NSObject>

/**
 ContainerView是弹出的View的底部载体
 
 @return ContainerView
 */
- (UIView *)containerView;

/**
 重写Container的Frame
 */
- (CGRect)resetContainerFrame;

/**
 设置子控件
 
 @return 装着子控件的Array
 */
- (NSArray *)configSubviews;

/**
 设置子控件的frame
 */
- (void)setupSubviewsFrames;

/**
 弹出AlertView
 */
- (void)showAlertView;


/**
 干掉AlertView
 */
- (void)dismissAlertView:(void(^)(void))complete;

@end

/**
 这个类是AlertView的基类，包含弹窗的动画和最底层的弹窗container，子类重新布局container的大小就好，然后子类自行添加控件
 */
@interface YDAlertView : UIView


@end
