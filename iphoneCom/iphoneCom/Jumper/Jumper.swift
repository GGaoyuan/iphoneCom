//
//  Jumper.swift
//  iphoneCom
//
//  Created by 高源 on 2019/11/12.
//  Copyright © 2019 高源. All rights reserved.
//

import UIKit

class Jumper: NSObject {
    class func jumpToTimeManagementController(_ source: UIViewController) {
        let vc = TimeManagementController()
        let nav = BaseNavigationController()
        nav.addChild(vc)
        source.present(nav, animated: true, completion: nil)
    }
}
