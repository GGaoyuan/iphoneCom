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
        
        let url = "https://gimg2.baidu.com/image_search/src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20190811%2F7dc7dc291bea4e94b6b8444cd8687820.jpeg&refer=http%3A%2F%2F5b0988e595225.cdn.sohucs.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1634464492&t=5ee3401249e6eae619948b4bc6e62e38"
        
        let imageView = { () -> UIImageView in
            let imageView = UIImageView()
            imageView.backgroundColor = .clear
            view.addSubview(imageView)
            return imageView
        }()
        imageView.snp.makeConstraints { m in
            m.size.equalTo(CGSize(width: 100, height: 100))
            m.left.top.equalTo(100)
        }
        imageView.kf.setImage(with: URL(string: url))
        
        dpEntrance()
    }
    
    
}

extension YDHomeViewController {
    func ltEntrance() {
        
//        DPEntrance.statusPattern()
    }
}

extension YDHomeViewController {
    func dpEntrance() {
//        DPEntrance.statusPattern()
    }
}
