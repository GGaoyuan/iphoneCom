//
//  HomeCrossView.swift
//  iphoneCom
//
//  Created by 高源 on 2019/9/4.
//  Copyright © 2019 高源. All rights reserved.
//

import UIKit

enum HomeCrossDirection {
    case center
    case top
    case left
    case right
    case bottom
}

class HomeCrossView: UIView, UIScrollViewDelegate {
    private var horizonScrollView: UIScrollView!
    private var verticalScrollView: UIScrollView!
    
    var direction: HomeCrossDirection = .center
    var centerView: UIView!
    var leftView: UIView!
    var topView: UIView!
    var rightView: UIView!
    var bottomView: UIView!
    var didEndDecelerating: ((HomeCrossDirection)->())?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupSubviews() {
        //横向的scrollView
        horizonScrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: self.width, height: self.height))
        horizonScrollView.backgroundColor = .white
        horizonScrollView.contentSize = CGSize(width: self.width * 3, height: 0)
        horizonScrollView.isPagingEnabled = true
        horizonScrollView.bounces = false
        horizonScrollView.delegate = self
        horizonScrollView.showsHorizontalScrollIndicator = false
        self.addSubview(horizonScrollView)
        horizonScrollView.setContentOffset(CGPoint(x: self.width, y: 0), animated: false)
        //左边的View
        leftView = UIView(frame: CGRect(x: 0, y: 0, width: self.width, height: self.height))
        leftView.backgroundColor = .red
        horizonScrollView.addSubview(leftView)
        //承载中间纵向滑动的View
        let tempMidView = UIView(frame: CGRect(x: self.width, y: 0, width: self.width, height: self.height))
        tempMidView.backgroundColor = .white
        horizonScrollView.addSubview(tempMidView)
        //右边的View
        rightView = UIView(frame: CGRect(x: self.width * 2, y: 0, width: self.width, height: self.height))
        rightView.backgroundColor = .green
        horizonScrollView.addSubview(rightView)
        //纵向滑动的scrollView
        verticalScrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: self.width, height: self.height))
        verticalScrollView.backgroundColor = .white
        verticalScrollView.contentSize = CGSize(width: 0, height: self.height * 3)
        verticalScrollView.isPagingEnabled = true
        verticalScrollView.bounces = false
        verticalScrollView.contentInsetAdjustmentBehavior = .never
        verticalScrollView.delegate = self
        verticalScrollView.showsVerticalScrollIndicator = false
        tempMidView.addSubview(verticalScrollView)
        verticalScrollView.setContentOffset(CGPoint(x: 0, y: self.height), animated: false)
        //上边的View
        topView = UIView(frame: CGRect(x: 0, y: 0, width: self.width, height: self.height))
        topView.backgroundColor = .yellow
        verticalScrollView.addSubview(topView)
        //中间的View
        centerView = UIView(frame: CGRect(x: 0, y: self.height, width: self.width, height: self.height))
        centerView.backgroundColor = .cyan
        verticalScrollView.addSubview(centerView)
        //下边的View
        bottomView = UIView(frame: CGRect(x: 0, y: self.height * 2, width: self.width, height: self.height))
        bottomView.backgroundColor = .blue
        verticalScrollView.addSubview(bottomView)
    }
    
    //MARK: - Delegate
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        if didEndDecelerating == nil {return}
        let offsetX = scrollView.contentOffset.x
        let offsetY = scrollView.contentOffset.y
        if scrollView == horizonScrollView {
            if Int(offsetX / self.width) == 0 {
                didEndDecelerating!(.left)
            } else if Int(offsetX / self.width) == 1 {
                didEndDecelerating!(.center)
            } else if Int(offsetX / self.width) == 2 {
                didEndDecelerating!(.right)
            }
        } else if scrollView == verticalScrollView {
            if Int(offsetY / self.height) == 0 {
                didEndDecelerating!(.top)
            } else if Int(offsetY / self.height) == 1 {
                didEndDecelerating!(.center)
            } else if Int(offsetY / self.height) == 2 {
                didEndDecelerating!(.bottom)
            }
        }
    }
}

