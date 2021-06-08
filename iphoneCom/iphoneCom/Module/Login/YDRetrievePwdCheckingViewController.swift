//
//  TestViewController.swift
//  iphoneCom
//
//  Created by gaoyuan on 2021/6/8.
//

import UIKit

class YDRetrievePwdCheckingViewController: YDFadeViewController {

    private var contentView: UIView!
    
}

extension YDRetrievePwdCheckingViewController: YDFadeViewControllerProtocol {
    func prt_viewDidLoad() {
        contentView = { () -> UIView in
            let kView = UIView()
            kView.frame = CGRect(x: 0, y: kScreenHeight, width: kScreenWidth, height: 100)
            kView.backgroundColor = UIColor.red
            view.addSubview(kView)
            return kView
        }()
//        contentView.snp.remakeConstraints { (m) in
//            m.left.right.equalToSuperview()
//            m.height.equalTo(100)
//            m.bottom.equalTo(500)
//        }
    }
    
    func customViewsShowAnimation() {
//        self.contentView.y = 100
        self.contentView.y = kScreenHeight - 100
    }
    
    func customViewsDismissAnimation() {
        self.contentView.y = kScreenHeight
//        contentView.snp.remakeConstraints { (m) in
//            m.left.right.equalToSuperview()
//            m.height.equalTo(100)
//            m.top.equalToSuperview()
//        }
//        contentView.layoutIfNeeded()
    }
}

