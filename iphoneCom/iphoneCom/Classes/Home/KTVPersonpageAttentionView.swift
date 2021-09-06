//
//  KTVPersonpageAttentionButton.swift
//  iphoneCom
//
//  Created by gaoyuan on 2021/8/26.
//

import UIKit
import YDSwift

class KTVPersonpageAttentionView: UIView {
    //normal
    var container: UIView!
//    var iconImageView: UIImageView!
//    var textLabel: UILabel!
    //selected
//    var selectedIconImageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = rgba(235,235,235,1)
        backgroundColor = rgba(255,41,89,1)
        
        container = { () -> UIView in
            let kView = UIView()
            kView.isUserInteractionEnabled = true
            kView.backgroundColor = .clear
            addSubview(kView)
            kView.snp.makeConstraints { m in
                m.center.equalToSuperview()
            }
            return kView
        }()

        iconImageView = { () -> UIImageView in
            let imageView = UIImageView(image: UIImage(named: "personpage_animation_attention_add"))
            imageView.backgroundColor = .clear
            imageView.isUserInteractionEnabled = true
            imageView.contentMode = .scaleAspectFit
            container.addSubview(imageView)
            imageView.snp.makeConstraints { m in
                m.left.top.bottom.equalToSuperview()
            }
            return imageView
        }()

        textLabel = { () -> UILabel in
            let label = UILabel()
            label.backgroundColor = .clear
            label.isUserInteractionEnabled = true
            label.text = "关注"
            label.font = UIFont(name: "PingFangSC-Semibold", size: 14)
            label.textColor = .white
            container.addSubview(label)
            label.snp.makeConstraints { m in
                m.right.top.bottom.equalToSuperview()
                m.left.equalTo(iconImageView.snp.right).offset(2)
            }
            return label
        }()

        selectedIconImageView = { () -> UIImageView in
            let imageView = UIImageView(image: UIImage(named: "personpage_animation_attentioned"))
            imageView.backgroundColor = .clear
            imageView.contentMode = .scaleAspectFit
            addSubview(imageView)
            imageView.snp.makeConstraints { m in
                m.center.equalToSuperview()
            }
            return imageView
        }()
        
        subviews.forEach({$0.isUserInteractionEnabled = true})
        
 
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = bounds.size.height/2
        layer.masksToBounds = true
    }
    
    func expanded(_ expand: Bool) {
        container.isHidden = !expand
        selectedIconImageView.isHidden = expand
    }
}











extension KTVPersonpageAttentionView {
    
    func expandAnimation() {
        self.container.isHidden = false
        self.container.alpha = 0
//        selectedIconImageView.transform = CGAffineTransform.identity.scaledBy(x: 0, y: 0)
        UIView.animateKeyframes(withDuration: 70 / k, delay: 0, options: UIView.KeyframeAnimationOptions.calculationModeLinear) {
            //关注按钮部分
            //底部颜色
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1) {
                self.backgroundColor = rgba(255,41,89,1)
            }
            //文字与图标渐隐
            UIView.addKeyframe(withRelativeStartTime: 0.72, relativeDuration: 1) {
                self.container.alpha = 1
            }
//            //shrink图标渐显
//            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.56) {
//                self.selectedIconImageView.alpha = 0
//            }
//            //shrink图标scale
//            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.28) {
//                self.selectedIconImageView.transform = CGAffineTransform.identity.scaledBy(x: 1.2, y: 1.2)
//            }
//            UIView.addKeyframe(withRelativeStartTime: 0.28, relativeDuration: 0.56) {
//                self.selectedIconImageView.transform = CGAffineTransform.identity.scaledBy(x: 0, y: 0)
//            }
        } completion: { complete in
            self.expanded(true)
        }
        
    }
    
    
    /// 一共70ms
    func shrinkAnimation() {
        
        selectedIconImageView.isHidden = false
        selectedIconImageView.alpha = 0
        selectedIconImageView.transform = CGAffineTransform.identity.scaledBy(x: 0, y: 0)
        UIView.animateKeyframes(withDuration: 70 / k, delay: 0, options: UIView.KeyframeAnimationOptions.calculationModeLinear) {
            //关注按钮部分
            //底部颜色
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1) {
                self.backgroundColor = rgba(235,235,235,1)
            }
            //文字与图标渐隐
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.28) {
                self.container.alpha = 0
            }
            //shrink图标渐显
            UIView.addKeyframe(withRelativeStartTime: 0.56, relativeDuration: 1) {
                self.selectedIconImageView.alpha = 1
            }
            //shrink图标scale
            UIView.addKeyframe(withRelativeStartTime: 0.56, relativeDuration: 0.78) {
                self.selectedIconImageView.transform = CGAffineTransform.identity.scaledBy(x: 1.2, y: 1.2)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.78, relativeDuration: 1) {
                self.selectedIconImageView.transform = CGAffineTransform.identity.scaledBy(x: 1, y: 1)
            }
        } completion: { complete in
            self.expanded(false)
        }
    }
}

