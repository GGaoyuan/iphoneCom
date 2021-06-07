//
//  UserSession.swift
//  iphoneCom
//
//  Created by gaoyuan on 2021/5/26.
//

import UIKit

class YDUserSession: NSObject {
    /// Singleton
    static let session = YDUserSession()
    var userInfo = YDUserInfo()
    
    private override init() {
        super.init()
    }
    
}
