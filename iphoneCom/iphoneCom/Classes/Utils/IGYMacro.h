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
 判断宏
 */
#define RETURN_IF_CONFORMITY(exp)    \
if((exp)) {        \
return NO;     \
}

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

/**
 Width && Height
 */
#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height
#define ViewWidth(V) V.frame.size.width
#define ViewHeight(V) V.frame.size.height


//NSUserDefaults
#define USERDEFAULT [NSUserDefaults standardUserDefaults]

//NSNotificationCenter
#define NOTIFICATION_CENTER [NSNotificationCenter defaultCenter]

//防止字符串异常
#define STR(S) ((S == nil || [S isKindOfClass:[NSNull class]]) ? @"" : S)

#define YDImageNamed(imageName) [UIImage imageNamed:imageName]

//6.沙盒的Document路径
#define YDDocumentPath NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0]
#define YDCachesPath NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES)[0]


/**
 BarHeight
 */
#define StatusBarHeight [UIApplication sharedApplication].statusBarFrame.size.height
#define NavigationBarHeight (YXStatusBarHeight + 44)


#endif /* IGYMacro_h */
