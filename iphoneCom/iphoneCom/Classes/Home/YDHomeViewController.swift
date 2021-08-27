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

    var attentionBtn: KTVPersonpageAttentionView!
    var chatBtn: KTVPersonpageChatView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        WWDCShare.main()
        
        let btn = { () -> UIButton in
            let button = UIButton(type: .custom)
            button.backgroundColor = .red
//            button.addTarget(self, action: #selector(testAction), for: .touchUpInside)
            button.adjustsImageWhenHighlighted = false
            view.addSubview(button)
            return button
        }()
        btn.snp.makeConstraints { (m) in
            m.size.equalTo(CGSize(width:100, height: 100))
            m.centerY.centerX.equalToSuperview()
        }
        
        
        
        let container = { () -> UIView in
            let kView = UIView()
            kView.backgroundColor = .white
            view.addSubview(kView)
            return kView
        }()
        container.snp.makeConstraints { m in
            m.top.right.equalToSuperview()
            m.left.equalTo(50)
            m.height.equalTo(200)
        }
        
        
        
        
        
        
        chatBtn = KTVPersonpageChatView()
        container.addSubview(chatBtn)
        chatBtn.snp.makeConstraints { m in
            m.width.height.equalTo(Height)
            m.centerY.equalToSuperview()
            m.right.equalTo(-RightMargin)
        }
        
        attentionBtn = KTVPersonpageAttentionView()
        container.addSubview(attentionBtn)
        attentionBtn.snp.makeConstraints { m in
            m.left.equalToSuperview()
            m.right.equalTo(chatBtn.snp.left).offset(-Space)
            m.centerY.equalToSuperview()
            m.height.equalTo(Height)
        }
        attentionBtn.expanded(true)
        chatBtn.expanded(false)
        
        
        let _ = { () -> UIButton in
            let button = UIButton(type: .custom)
            button.backgroundColor = .clear
            button.addTarget(self, action: #selector(chatBtnAction), for: .touchUpInside)
            chatBtn.addSubview(button)
            button.snp.makeConstraints { m in
                m.edges.equalToSuperview()
            }
            return button
        }()
        let _ = { () -> UIButton in
            let button = UIButton(type: .custom)
            button.backgroundColor = .clear
            button.addTarget(self, action: #selector(attentionBtnAction), for: .touchUpInside)
            attentionBtn.addSubview(button)
            button.snp.makeConstraints { m in
                m.edges.equalToSuperview()
            }
            return button
        }()
        
        dpEntrance()
    }
    
    @objc func attentionBtnAction() {
        attentionBtn.shrinkAnimation()
        chatBtn.expandAnimation()
        self.chatBtn.snp.remakeConstraints { m in
            m.height.equalTo(Height)
            m.centerY.equalToSuperview()
            m.right.equalTo(-RightMargin)
            m.left.equalTo(self.attentionBtn.snp.right).offset(Space)
        }
        self.attentionBtn.snp.remakeConstraints { m in
            m.left.centerY.equalToSuperview()
            m.width.height.equalTo(Height)
        }
        UIView.animate(withDuration: 0.55 / k) {
            self.view.layoutIfNeeded()
        } completion: { complete in
            self.attentionBtn.expanded(false)
            self.chatBtn.expanded(true)
        }
        print("attentionBtnAction")
    }
    
    @objc func chatBtnAction() {
        attentionBtn.expandAnimation()
        chatBtn.shrinkAnimation()
        
        self.chatBtn.snp.remakeConstraints { m in
            m.width.height.equalTo(Height)
            m.centerY.equalToSuperview()
            m.right.equalTo(-RightMargin)
        }
        self.attentionBtn.snp.remakeConstraints { m in
            m.left.equalToSuperview()
            m.right.equalTo(self.chatBtn.snp.left).offset(-Space)
            m.centerY.equalToSuperview()
            m.height.equalTo(Height)
        }
        
        UIView.animate(withDuration: 0.55 / k) {
            self.view.layoutIfNeeded()
        } completion: { complete in
            self.attentionBtn.expanded(true)
            self.chatBtn.expanded(false)
        }
        print("chatBtnAction")
    }
}

extension YDHomeViewController {
    
}

extension YDHomeViewController {
    func dpEntrance() {
        DPEntrance.statusPattern()
    }
}
