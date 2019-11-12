//
//  BaseNavigationController.swift
//  iphoneCom
//
//  Created by 高源 on 2019/11/12.
//  Copyright © 2019 高源. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
        delegate = self
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.isTranslucent = false
        navigationBar.shadowImage = UIImage()
    }
}

extension BaseNavigationController: UINavigationControllerDelegate, UIGestureRecognizerDelegate {
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        if gestureRecognizer == interactivePopGestureRecognizer && viewControllers.count < 2 {
            return false
        }
        return true
    }
}

extension UINavigationController {
    override open var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
    
    override open var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return .portrait
    }
    
    override open var shouldAutorotate: Bool {
        return false
    }
}
