//
//  TestViewController.swift
//  iphoneCom
//
//  Created by gaoyuan on 2021/6/8.
//

import UIKit

class YDRetrievePwdCheckingViewController: YDFadeViewController {
    private var contentView: YDRetrievePwdCheckingContentView!
}

extension YDRetrievePwdCheckingViewController: YDFadeViewControllerProtocol {
    func prt_viewDidLoad() {
        contentView = UINib(nibName: "YDRetrievePwdCheckingContentView", bundle: nil).instantiate(withOwner: nil, options: nil).first as? YDRetrievePwdCheckingContentView
        view.addSubview(contentView)
        contentView.snp.makeConstraints { (m) in
            m.left.right.equalToSuperview()
            m.top.equalTo(view.snp.bottom)
        }
        view.layoutIfNeeded()
        contentView.round(corners: [.topLeft, .topRight], radius: 18)
    }
    
    func customViewsShowAnimation() {
        contentView.snp.remakeConstraints { (m) in
            m.left.right.equalToSuperview()
            m.bottom.equalToSuperview()
        }
        view.layoutIfNeeded()
    }
    
    func customViewsDismissAnimation() {
        contentView.snp.remakeConstraints { (m) in
            m.left.right.equalToSuperview()
            m.top.equalTo(view.snp.bottom)
        }
        view.layoutIfNeeded()
    }
}

