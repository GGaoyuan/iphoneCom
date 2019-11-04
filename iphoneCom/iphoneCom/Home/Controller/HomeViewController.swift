//
//  HomeViewController.swift
//  iphoneCom
//
//  Created by 高源 on 2019/9/4.
//  Copyright © 2019 高源. All rights reserved.
//
//https://www.jianshu.com/p/ae581ea8a011

import UIKit
import Algorithm
import DesignPatterns

class HomeViewController: UIViewController, UIScrollViewDelegate {
    
    var crossView: HomeCrossView!
    
    var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        btn = UIButton(type: .custom)
        btn.backgroundColor = .red
        view.addSubview(btn)
        btn.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        btn.addTarget(self, action: #selector(testMethod), for: .touchUpInside)
    }
    
    @objc func testMethod() {
        DesignPatterns.testDesignPatterns()
        Algorithm.testMethod()
    }
    
    private func setupImageView(controller: UIViewController) -> UIImageView {
        self.addChild(controller)
        controller.willMove(toParent: self)
        return UIImageView(image: controller.view.asImage())
    }
    
    private func setupSubviews() {
        crossView = HomeCrossView(frame: self.view.bounds)
        self.view.addSubview(crossView)
        crossView.didEndDecelerating = {(direction) in
            if direction == .top {
                print("top")
            } else if direction == .bottom {
                print("bottom")
            } else if direction == .center {
                print("center")
            } else if direction == .left {
                print("left")
            } else if direction == .right {
                print("right")
            }
        }
    }
}
