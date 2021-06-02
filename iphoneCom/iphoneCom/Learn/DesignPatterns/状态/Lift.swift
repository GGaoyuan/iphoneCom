//
//  Lift.swift
//  iphoneCom
//
//  Created by gaoyuan on 2021/6/1.
//

import UIKit

protocol LiftProtocol: NSObjectProtocol {
    func open()
    func close()
    func run()
    func stop()
}

class Lift: NSObject, LiftProtocol {
    
    enum Status: Int {
        case opening = 0
        case closing = 1
        case running = 2
        case stoping = 3
    }
    
    func open() {
        print("电梯门开启")
    }
    
    func close() {
        print("电梯门关闭")
    }
    
    func run() {
        print("电梯上下运行")
    }
    
    func stop() {
        print("电梯停止")
    }
    
    
}
