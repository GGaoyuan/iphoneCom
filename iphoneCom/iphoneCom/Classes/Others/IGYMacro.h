//
//  IGYMacro.h
//  iphoneCom
//
//  Created by gaoyuan on 2019/2/28.
//  Copyright © 2019 gaoyuan. All rights reserved.
//

#ifndef IGYMacro_h
#define IGYMacro_h

/**
 型号判断
 */
#define IPHONE_5     ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)
#define IPHONE_6     ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) : NO)
#define IPHONE_6PLUS ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) : NO)
#define IPHONE_X     ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) : NO)
#define IPHONE_XR    ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) : NO)
#define IPHONE_XSMAX ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) : NO)

/**
 系统判断
 */
#define SystemVersion [UIDevice currentDevice].systemVersion.floatValue

/**
 键盘弹出通知宏
 */
#define KEYBOARD_SHOW_NOTIFICATION(SEL) [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(SEL) name:UIKeyboardWillShowNotification object:nil];
#define KEYBOARD_HIDE_NOTIFICATION(SEL) [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(SEL) name:UIKeyboardWillHideNotification object:nil];

/**
 打印
 */
#if DEBUG
#define NSLog(FORMAT, ...) fprintf(stderr,"[%s:%d行] %s\n",[[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String], __LINE__, [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#else
#define NSLog(FORMAT, ...) nil
#endif

/**
 rgb颜色
 */
#define rgb(r, g, b)      [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
#define rgba(r, g, b, a)  [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]
#define rgbGlobal         [UIColor colorWithRed:1/255.0 green:1/255.0 blue:b/255.0 alpha:1.0]

/**
 Width && Height
 */
#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height
#define ViewWidth(V) V.frame.size.width
#define ViewHeight(V) V.frame.size.height

//防止字符串异常
#define STR(S) ((S == nil || [S isKindOfClass:[NSNull class]]) ? @"" : S)

//UIImageNamed
#define IGYImageNamed(imageName) [UIImage imageNamed:imageName]

//沙盒的Document路径
#define IGYDocumentPath NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0]
#define IGYCachesPath NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES)[0]

/**
 BarHeight
 */
#define StatusBarHeight [UIApplication sharedApplication].statusBarFrame.size.height
#define NavigationBarHeight (YXStatusBarHeight + 44)


#endif /* IGYMacro_h */
