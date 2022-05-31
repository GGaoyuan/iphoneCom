//
//  YDGlobal.swift
//  iphoneCom
//
//  Created by gaoyuan on 2022/5/31.
//

import UIKit
//import SnapKit

// MARK: - UI Constant
public let kScreenSize = UIScreen.main.bounds.size
public let kScreenWidth = UIScreen.main.bounds.size.width
public let kScreenHeight = UIScreen.main.bounds.size.height
/// 是否是刘海屏
public let isNotch: Bool = UIScreen.main.bounds.size.height >= 812
public let kNavigationBarHeight: CGFloat = CGFloat(isNotch ? 88 : 64)
public let kHomeAreaHeight: CGFloat = CGFloat(isNotch ? 34 : 0)
public let kTabBarHeight: CGFloat = CGFloat(isNotch ? 83 : 49)
public let kStatusBarHeight: CGFloat = UIApplication.shared.statusBarFrame.height

// MARK: - UI Function
/// rgba颜色
public func rgba(_ r: CGFloat,_ g: CGFloat,_ b: CGFloat, _ a: CGFloat) -> UIColor {
    return UIColor(red: (r)/255.0, green: (g)/255.0, blue: (b)/255.0, alpha: 1.0)
}



// MARK: - System Constant
public let kSystemVersion: Float = (UIDevice.current.systemVersion as NSString).floatValue
public let isiOS9: Bool = kSystemVersion >= 9.0
public let isiOS10: Bool = kSystemVersion >= 10.0
public let isiOS11: Bool = kSystemVersion >= 11.0
public let isiOS12: Bool = kSystemVersion >= 12.0
public let isiOS13: Bool = kSystemVersion >= 13.0
public let isiOS14: Bool = kSystemVersion >= 14.0

// MARK: - Thread
public func dispatch_after(_ thread: DispatchQueue = DispatchQueue.main, seconds: Double, _ code: @escaping () -> ()) {
    thread.asyncAfter(deadline: DispatchTime.now() + seconds, execute: code)
}

public func dispatch_main(_ code: @escaping () -> ()) {
    DispatchQueue.main.async {
        code()
    }
}
