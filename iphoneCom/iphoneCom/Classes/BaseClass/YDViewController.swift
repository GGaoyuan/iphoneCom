//
//  YDViewController.swift
//  iphoneCom
//
//  Created by gaoyuan on 2021/5/26.
//

import UIKit

class YDViewController: UIViewController {
    
    deinit {
        print("[Released] \(classForCoder)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        modalPresentationStyle = .fullScreen
    }

}
