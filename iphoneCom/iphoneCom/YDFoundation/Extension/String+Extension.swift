//
//  String+Extension.swift
//  iphoneCom
//
//  Created by gaoyuan on 2022/5/31.
//

import UIKit

extension String {
    
    /// 截取字符串
    /// - Parameters:
    ///   - from: 开始的索引
    ///   - to: 结束的索引
    public func subString(from: Int, to: Int) -> String {
        let start = index(startIndex, offsetBy: (from > count-1 ? count-1 : from))
        let end = index(startIndex, offsetBy: (to > count-1 ? count-1 : to))
        let result = self[start...end]
        return String(result)
    }
}
