//
//  UIView+Extension.swift
//  iphoneCom
//
//  Created by gaoyuan on 2022/5/31.
//

import UIKit

extension UIView {
    @objc var x: CGFloat {
        get {
            return frame.origin.x
        }
        set (newValue){
            frame.origin.x = newValue
        }
    }
    @objc var y: CGFloat {
        get {
            return frame.origin.y
        }
        set (newValue){
            frame.origin.y = newValue
        }
    }
    @objc var width: CGFloat {
        get {
            return frame.size.width
        }
        set (newValue){
            frame.size.width = newValue
        }
    }
    @objc var height: CGFloat {
        get {
            return frame.size.height
        }
        set (newValue){
            frame.size.height = newValue
        }
    }
    @objc var centerX: CGFloat {
        get {
            return center.x
        }
        set (newValue){
            var center = self.center
            center.x = newValue
            self.center = center
        }
    }
    @objc var centerY: CGFloat {
        get {
            return self.center.y
        }
        set (newValue){
            var center = self.center
            center.y = newValue
            self.center = center
        }
    }
    @objc var size: CGSize {
        get {
            return frame.size
        }
        set (newValue){
            frame.size = newValue
        }
    }
    
    @objc var maxX: CGFloat {
        return frame.maxX
    }
    @objc var maxY: CGFloat {
        return frame.maxY
    }
    
    @objc var midX: CGFloat {
        return frame.midX
    }
    @objc var midY: CGFloat {
        return frame.midY
    }
    @objc var minX: CGFloat {
        return frame.minX
    }
    @objc var minY: CGFloat {
        return frame.minY
    }
}


extension UIView {
    
    /// 生成圆角
    public func round(corners: UIRectCorner = [.topLeft, .topRight, .bottomLeft, .bottomRight], radius: CGFloat) {
        dispatch_main { [weak self] in
            guard let self = self else {return}
            let rect = self.bounds
            let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
            let mask = CAShapeLayer()
            mask.path = path.cgPath
            self.layer.mask = mask
        }
    }
    
    /// 生成不同的圆角readtool
}
