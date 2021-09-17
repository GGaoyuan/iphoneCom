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



let Height: CGFloat = 36
let Space: CGFloat = 20
let RightMargin: CGFloat = 50
class YDHomeViewController: YDViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        dpEntrance()
    }
    
    
}

extension YDHomeViewController {
    func dpEntrance() {
        DPEntrance.statusPattern()
    }
}
