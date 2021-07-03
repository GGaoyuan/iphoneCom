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
    }
    
    @objc func loginAtcion() {
//        let loginNav = YDNavigationController()
//        loginNav.modalPresentationStyle = .fullScreen
//        loginNav.addChild(YDLoginViewController())
//        present(loginNav, animated: true, completion: nil)
        
//        dpEntrance()
        
        
        let funVar = printInt
        funVar(2)
        
        let funVar2 = printIntttt
        funVar2(2, 4)
        
        
        
        print("")
    }
}

extension YDHomeViewController {
    
    func useFunction(function:(Int)) {
        
    }
    
    
    func printInt(i: Int) {
        print("You passed \(i).")
    }
    
    func printIntttt(i: Int, j: Int) {
        print("You passed \(i). \(j)")
    }
}

extension YDHomeViewController {
    func dpEntrance() {
        DPEntrance.statusPattern()
    }
}
