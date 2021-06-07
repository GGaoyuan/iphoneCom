//
//  TestViewController.swift
//  iphoneCom
//
//  Created by gaoyuan on 2021/6/8.
//

import UIKit

class YDRetrievePwdCheckingViewController: YDBaseSheetViewController {

    private var contentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contentView = { () -> UIView in
            let kView = UIView()
            kView.backgroundColor = UIColor.red
            view.addSubview(kView)
            return kView
        }()
    }
    
    override func customViewDismissAnimation() {
//        contentView.snp.remakeConstraints { (m) in
//            m.left.right.equalToSuperview()
//            m.height.equalTo(100)
//            m.top.equalTo(view.snp_bottomMargin)
//        }
//        contentView.layoutIfNeeded()
    }
    
    override func customViewShowAnimation() {
//        contentView.snp.remakeConstraints { (m) in
//            m.left.right.bottom.equalToSuperview()
//            m.height.equalTo(100)
//        }
//        contentView.layoutIfNeeded()
    }

}
