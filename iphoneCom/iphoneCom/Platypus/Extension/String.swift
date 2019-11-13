//
//  String.swift
//  iphoneCom
//
//  Created by 高源 on 2019/11/12.
//  Copyright © 2019 高源. All rights reserved.
//

import UIKit

extension String {
    
    func regularExpression(_ pattern: String) -> (resultStrs: [String], ranges: [NSRange]) {
        var result = [String]()
        var ranges = [NSRange]()
        do {
            let regex = try NSRegularExpression(pattern: pattern, options: [])
            let matches = regex.matches(in: self, options: [], range: NSRange(location: 0, length: self.count))
            for (_, match) in matches.enumerated() {
                let substring = (self as NSString).substring(with: match.range)
                result.append(substring)
                ranges.append(match.range)
            }
        } catch {
            print(error.localizedDescription)
        }
        return (result, ranges)
    }
}
