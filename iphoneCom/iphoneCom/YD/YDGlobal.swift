//
//  SFGlobalFunction.swift
//  iOS
//
//  Created by gaoyuan on 2020/11/17.
//

import UIKit
import SnapKit

// MARK: - UI Constant
let kScreenSize = UIScreen.main.bounds.size
let kScreenWidth = UIScreen.main.bounds.size.width
let kScreenHeight = UIScreen.main.bounds.size.height
/// 是否是刘海屏
let isNotch: Bool = UIScreen.main.bounds.size.height >= 812
let kNavigationBarHeight: CGFloat = CGFloat(isNotch ? 88 : 64)
let kHomeAreaHeight: CGFloat = CGFloat(isNotch ? 34 : 0)
let kTabBarHeight: CGFloat = CGFloat(isNotch ? 83 : 49)
let kStatusBarHeight: CGFloat = UIApplication.shared.statusBarFrame.height

// MARK: - UI Function
/// rgba颜色
func rgba(_ r: CGFloat,_ g: CGFloat,_ b: CGFloat, _ a: CGFloat) -> UIColor {
    return UIColor(red: (r)/255.0, green: (g)/255.0, blue: (b)/255.0, alpha: 1.0)
}

// MARK: - System Constant
let kSystemVersion: Float = (UIDevice.current.systemVersion as NSString).floatValue
let isiOS9: Bool = kSystemVersion >= 9.0
let isiOS10: Bool = kSystemVersion >= 10.0
let isiOS11: Bool = kSystemVersion >= 11.0
let isiOS12: Bool = kSystemVersion >= 12.0
let isiOS13: Bool = kSystemVersion >= 13.0
let isiOS14: Bool = kSystemVersion >= 14.0
