//
//  YDHomeViewController.swift
//  iphoneCom
//
//  Created by gaoyuan on 2021/5/26.
//

import UIKit
import SnapKit
import Kingfisher
import YDSwift
import YDLearn
class YDHomeViewController: YDViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let btn = { () -> UIButton in
//            let button = UIButton(type: .custom)
//            button.backgroundColor = .red
//            button.addTarget(self, action: #selector(loginAtcion), for: .touchUpInside)
//            button.adjustsImageWhenHighlighted = false
//            view.addSubview(button)
//            return button
//        }()
//        btn.snp.makeConstraints { (m) in
//            m.size.equalTo(CGSize(width:100, height: 100))
//            m.centerY.centerX.equalToSuperview()
//        }
        
        dpEntrance()
        
        let url = URL(string: "https://img0.baidu.com/it/u=2997252132,3407860222&fm=26&fmt=auto&gp=0.jpg")
        
        
        let imageViewA = { () -> UIImageView in
            let imageView = UIImageView()
            imageView.backgroundColor = .gray
            self.view.addSubview(imageView)
            return imageView
        }()
        imageViewA.snp.makeConstraints { (m) in
            m.bottom.centerX.equalToSuperview()
        }
        imageViewA.kf.setImage(with: url)
        
        
        let imageViewB = { () -> UIImageView in
            let imageView = UIImageView()
            imageView.backgroundColor = .gray
            self.view.addSubview(imageView)
            return imageView
        }()
        imageViewB.snp.makeConstraints { (m) in
            m.top.centerX.equalToSuperview()
            m.size.equalTo(CGSize(width:100, height: 100))
        }
//        let url = URL(string: "https://img0.baidu.com/it/u=2997252132,3407860222&fm=26&fmt=auto&gp=0.jpg")
//        imageViewB.kf.setImage(with: url)
        
    }
    
    @objc func loginAtcion() {
//        let loginNav = YDNavigationController()
//        loginNav.modalPresentationStyle = .fullScreen
//        loginNav.addChild(YDLoginViewController())
//        present(loginNav, animated: true, completion: nil)
        
        
        
        
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
