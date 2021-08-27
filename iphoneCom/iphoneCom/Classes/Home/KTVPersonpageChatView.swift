//
//  KTVPersonpageChatButton.swift
//  iphoneCom
//
//  Created by gaoyuan on 2021/8/26.
//

import UIKit
import YDSwift


class KTVPersonpageChatView: UIView {
    let iconSize = CGSize(width: 16, height: 16)
    private var iconImageView: UIImageView!
    private var textLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = rgba(235,235,235,1)
        
        iconImageView = { () -> UIImageView in
            let imageView = UIImageView(image: UIImage(named: "personpage_animation_chat"))
            imageView.backgroundColor = .clear
            imageView.contentMode = .scaleAspectFit
            addSubview(imageView)
            imageView.snp.makeConstraints { m in
                m.centerY.equalToSuperview()
                m.centerX.equalToSuperview().offset(-14)
                m.size.equalTo(iconSize)
            }
            return imageView
        }()
        textLabel = { () -> UILabel in
            let label = UILabel()
            label.backgroundColor = .clear
            label.text = "聊天"
            label.font = UIFont(name: "PingFangSC-Medium", size: 12)
            label.textColor = rgba(51,51,51,1)
            addSubview(label)
            label.snp.makeConstraints { m in
                m.left.equalTo(iconImageView.snp.right).offset(5)
                m.centerY.equalToSuperview()
            }
            return label
        }()
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
        textLabel.isHidden = !expand
        iconImageView.snp.remakeConstraints { m in
            if expand {
                m.centerY.equalToSuperview()
                m.centerX.equalToSuperview().offset(-14)
            } else {
                m.center.equalToSuperview()
            }
            m.size.equalTo(iconSize)
        }
    }
}


extension KTVPersonpageChatView {
    func expandAnimation() {
        textLabel.isHidden = false
        textLabel.alpha = 0
        textLabel.transform = CGAffineTransform.identity.scaledBy(x: 0, y: 0)
        UIView.animateKeyframes(withDuration: 0.08/k, delay: 0, options: UIView.KeyframeAnimationOptions.calculationModeLinear) {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.1875) {
                self.textLabel.alpha = 0
                self.textLabel.transform = CGAffineTransform.identity.scaledBy(x: 0, y: 0)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.1875, relativeDuration: 1) {
                self.textLabel.alpha = 1
                self.textLabel.transform = CGAffineTransform.identity.scaledBy(x: 1, y: 1)
            }
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1) {
                self.iconImageView.snp.remakeConstraints { m in
                    m.centerY.equalToSuperview()
                    m.centerX.equalToSuperview().offset(-14)
                    m.size.equalTo(self.iconSize)
                }
            }
            self.layoutIfNeeded()
        } completion: { complete in

        }
    }
    
    func shrinkAnimation() {
        UIView.animateKeyframes(withDuration: 0.08/k, delay: 0, options: UIView.KeyframeAnimationOptions.calculationModeLinear) {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.8125) {
                self.textLabel.alpha = 0
                self.textLabel.transform = CGAffineTransform.identity.scaledBy(x: 0, y: 0)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.8125, relativeDuration: 1) {
                self.textLabel.alpha = 0
                self.textLabel.transform = CGAffineTransform.identity.scaledBy(x: 0, y: 0)
            }
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1) {
                self.iconImageView.snp.remakeConstraints { m in
                    m.center.equalToSuperview()
                    m.size.equalTo(self.iconSize)
                }
            }
            self.layoutIfNeeded()
        } completion: { complete in

        }
    }
}
