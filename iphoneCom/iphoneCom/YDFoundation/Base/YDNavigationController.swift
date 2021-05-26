//
//  YDNavigationController.swift
//  iphoneCom
//
//  Created by gaoyuan on 2021/5/26.
//

import UIKit

class YDNavigationController: UINavigationController {

    override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.shadowImage = UIImage()
        navigationBar.barTintColor = UIColor.white
        
        let line = UIView(frame: CGRect(x:0, y:navigationBar.bounds.size.height, width:kScreenWidth, height:1))
        line.backgroundColor = .green
        navigationBar.addSubview(line)
        
        let halfLine = UIView(frame: CGRect(x:0, y:0, width:kScreenWidth, height:1/UIScreen.main.scale))
        halfLine.backgroundColor = .red
        line.addSubview(halfLine)
    }
}
