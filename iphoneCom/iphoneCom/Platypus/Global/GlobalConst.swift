//
//  GlobalConst.swift
//  iphoneCom
//
//  Created by 高源 on 2019/11/4.
//  Copyright © 2019 高源. All rights reserved.
//

import UIKit

/// 屏幕宽度
public var kScreenW: CGFloat {
    return UIScreen.main.bounds.width
}

/// 屏幕高度
public var kScreenH: CGFloat {
    return UIScreen.main.bounds.height
}

/// 以iPhone6为标准缩放float尺寸
public func kAutoPercent(_ f: CGFloat) -> CGFloat {
    return (kScreenH / 667) * f;
}

/// 通过rgba获取颜色
public func rgba(_ r: CGFloat,_ g: CGFloat,_ b: CGFloat, _ a: CGFloat) -> UIColor {
    return UIColor(red: (r)/255.0, green: (g)/255.0, blue: (b)/255.0, alpha: 1.0)
}
