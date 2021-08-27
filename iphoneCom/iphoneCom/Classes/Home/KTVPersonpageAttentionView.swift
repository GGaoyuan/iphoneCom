//
//  KTVPersonpageAttentionButton.swift
//  iphoneCom
//
//  Created by gaoyuan on 2021/8/26.
//

import UIKit
import YDSwift

class KTVPersonpageAttentionGradientView: UIView {
    private var gradientLayer: CAGradientLayer!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        isUserInteractionEnabled = true
        
        gradientLayer = CAGradientLayer()
        gradientLayer.colors = [rgba(255,41,89,1).cgColor, rgba(255,60,60,1).cgColor]
        gradientLayer.locations = [0,1]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0)
        layer.insertSublayer(gradientLayer, at: 0)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds;
    }
    
    func expandAnimation() {
        let bgColorAni = CABasicAnimation(keyPath: "colors")
        bgColorAni.duration = 0.45 / k
        bgColorAni.toValue = [rgba(255,41,89,1).cgColor, rgba(255,60,60,1).cgColor]
        bgColorAni.fillMode = .both
        bgColorAni.isRemovedOnCompletion = false
        gradientLayer.add(bgColorAni, forKey: "bgColorAni")
    }
    
    func shrinkAnimation() {
        let colors = [rgba(235,235,235,1).cgColor, rgba(235,235,235,1).cgColor]
        let bgColorAni = CABasicAnimation(keyPath: "colors")
        bgColorAni.duration = 0.45 / k
        bgColorAni.toValue = colors
        bgColorAni.fillMode = .both
        bgColorAni.isRemovedOnCompletion = false
        gradientLayer.add(bgColorAni, forKey: "bgColorAni")
    }
}


class KTVPersonpageAttentionView: UIView {
    private var gradientView: KTVPersonpageAttentionGradientView!
    //normal
    private var container: UIView!
    private var iconImageView: UIImageView!
    private var textLabel: UILabel!
    //selected
    private var selectedIconImageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = rgba(235,235,235,1)
        
        gradientView = { () -> KTVPersonpageAttentionGradientView in
            let kView = KTVPersonpageAttentionGradientView()
            kView.backgroundColor = rgba(235,235,235,1)
            addSubview(kView)
            kView.snp.makeConstraints { m in
                m.edges.equalToSuperview()
            }
            return kView
        }()
        
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
        self.layer.cornerRadius = bounds.size.height/2
        self.layer.masksToBounds = true
    }
    
    func expanded(_ expand: Bool) {
        container.isHidden = !expand
        selectedIconImageView.isHidden = expand
    }
}

let k: TimeInterval = 0.1
extension KTVPersonpageAttentionView {
    
    func expandAnimation() {
        gradientView.expandAnimation()
        
//        let bgColorAni = CABasicAnimation(keyPath: "colors")
//        bgColorAni.duration = 0.045 / k
////        bgColorAni.fromValue = [rgba(235,235,235,1).cgColor, rgba(235,235,235,1).cgColor]
//        bgColorAni.toValue = [rgba(255,41,89,1).cgColor, rgba(255,60,60,1).cgColor]
//        bgColorAni.fillMode = .both
//        bgColorAni.isRemovedOnCompletion = false
//        gradientLayer.add(bgColorAni, forKey: "bgColorAni")

        
        
//        container.isHidden = false
//        container.layer.opacity = 0
//        let containerOpacity = CABasicAnimation(keyPath: "opacity")
//        containerOpacity.duration = 0.02 / k
//        containerOpacity.toValue = 1
//        containerOpacity.fillMode = .forwards
//        containerOpacity.isRemovedOnCompletion = false
//        container.layer.add(containerOpacity, forKey: "containerOpacity")
//
//        let selectedIconOpacity = CAKeyframeAnimation(keyPath: "opacity")
//        selectedIconOpacity.values = [1, 0, 0]
//        selectedIconOpacity.keyTimes = [1, 0.43, 0]
//        let selectedIconScale = CAKeyframeAnimation(keyPath: "transform.scale")
//        selectedIconScale.values = [1, 1.2, 0, 0]
//        selectedIconScale.keyTimes = [0, 0.22, 0.43, 1]
//        let groupAnimi = CAAnimationGroup()
//        groupAnimi.duration = 0.07 / k
//        groupAnimi.fillMode = .forwards
//        groupAnimi.animations = [selectedIconOpacity, selectedIconScale]
//        groupAnimi.isRemovedOnCompletion = false
//        selectedIconImageView.layer.add(groupAnimi, forKey: "groupAnimi")
    }
    
    func shrinkAnimation() {
        gradientView.shrinkAnimation()

//        let colors = [rgba(235,235,235,1).cgColor, rgba(235,235,235,1).cgColor]
//        let bgColorAni = CABasicAnimation(keyPath: "colors")
//        bgColorAni.duration = 0.045 / k
//        bgColorAni.toValue = colors
//        bgColorAni.fillMode = .both
//        bgColorAni.isRemovedOnCompletion = false
//        gradientLayer.add(bgColorAni, forKey: "bgColorAni")
//
//        let containerOpacity = CABasicAnimation(keyPath: "opacity")
//        containerOpacity.duration = 0.02 / k
//        containerOpacity.toValue = 0
//        containerOpacity.fillMode = .forwards
//        containerOpacity.isRemovedOnCompletion = false
//        container.layer.add(containerOpacity, forKey: "containerOpacity")
//
//        selectedIconImageView.isHidden = false
//        selectedIconImageView.layer.opacity = 0
//        let selectedIconOpacity = CAKeyframeAnimation(keyPath: "opacity")
//        selectedIconOpacity.values = [0, 0, 1]
//        selectedIconOpacity.keyTimes = [0, 0.57, 1]
//        let selectedIconScale = CAKeyframeAnimation(keyPath: "transform.scale")
//        selectedIconScale.values = [0, 0, 1.2, 1]
//        selectedIconScale.keyTimes = [0, 0.57, 0.78, 1]
//        let groupAnimi = CAAnimationGroup()
//        groupAnimi.duration = 0.07 / k
//        groupAnimi.fillMode = .forwards
//        groupAnimi.animations = [selectedIconOpacity, selectedIconScale]
//        groupAnimi.isRemovedOnCompletion = false
//        selectedIconImageView.layer.add(groupAnimi, forKey: "groupAnimi")
    }
}

