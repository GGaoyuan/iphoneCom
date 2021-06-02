//
//  YDHomeViewController.swift
//  iphoneCom
//
//  Created by gaoyuan on 2021/5/26.
//

import UIKit

class YDHomeViewController: YDViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dpEntrance()
    }
}

extension YDHomeViewController {
    func dpEntrance() {
//        DPEntrance.commandPattern()
        DPEntrance.statusPattern()
    }
}
