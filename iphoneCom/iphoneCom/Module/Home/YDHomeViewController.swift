//
//  YDHomeViewController.swift
//  iphoneCom
//
//  Created by gaoyuan on 2021/5/26.
//

import UIKit
import SnapKit

class YDHomeViewController: YDViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btn = { () -> UIButton in
            let button = UIButton(type: .custom)
            button.backgroundColor = .red
            button.addTarget(self, action: #selector(loginAtcion), for: .touchUpInside)
            button.adjustsImageWhenHighlighted = false
            view.addSubview(button)
            return button
        }()
        btn.snp.makeConstraints { (m) in
            m.size.equalTo(CGSize(width:100, height: 100))
            m.centerY.centerX.equalToSuperview()
        }
        
        dpEntrance()
    }
    
    @objc func loginAtcion() {
        let loginNav = YDNavigationController()
        loginNav.modalPresentationStyle = .fullScreen
        loginNav.addChild(YDLoginViewController())
        present(loginNav, animated: true, completion: nil)
        
//        let loginViewController = YDLoginViewController()
//        loginViewController.modalPresentationStyle = .fullScreen
//        present(loginViewController, animated: true, completion: nil)
    }
}

extension YDHomeViewController {
    func dpEntrance() {
//        DPEntrance.commandPattern()
        DPEntrance.statusPattern()
    }
}
