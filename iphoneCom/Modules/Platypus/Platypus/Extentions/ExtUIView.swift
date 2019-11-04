//
//  UIView.swift
//  Platypus
//
//  Created by gaoyuan on 2019/9/11.
//  Copyright © 2019 gaoyuan. All rights reserved.
//

import UIKit

public class Test: NSObject {
    public class func test() {
        print("1111111111")
    }
}
// MARK: - Frame
public extension UIView {
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
    
    var maxX: CGFloat {
        return frame.maxX
    }
    var maxY: CGFloat {
        return frame.maxY
    }
    var minX: CGFloat {
        return frame.minX
    }
    var minY: CGFloat {
        return frame.minY
    }
}

// MARK: - Frame
public extension UIView {
    /// UIView转化为UIImage
    func asImage() -> UIImage {
        let renderer = UIGraphicsImageRenderer(bounds: bounds)
        return renderer.image { rendererContext in
            layer.render(in: rendererContext.cgContext)
        }
    }
}
