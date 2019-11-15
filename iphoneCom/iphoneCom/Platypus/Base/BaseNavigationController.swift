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
        
        UINavigationBar.appearance().tintColor = .black
//        let backImage = UIImage.init(named: "nav_back")?.withRenderingMode(.alwaysOriginal)
//        navigationBar.backIndicatorImage = backImage
//        navigationBar.backIndicatorTransitionMaskImage = backImage
    }
}

extension BaseNavigationController: UINavigationControllerDelegate, UIGestureRecognizerDelegate {
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        if gestureRecognizer == interactivePopGestureRecognizer && viewControllers.count < 2 {
            return false
        }
        return true
    }
    
    func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationController.Operation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        let backButton = UIBarButtonItem()
        backButton.title = ""
//        backButton.image = UIImage.init(named: "nav_back")?.withRenderingMode(.alwaysOriginal)
        fromVC.navigationItem.backBarButtonItem = backButton
        return nil
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
