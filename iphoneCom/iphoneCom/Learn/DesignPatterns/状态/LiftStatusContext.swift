//
//  StatusContext.swift
//  iphoneCom
//
//  Created by gaoyuan on 2021/6/1.
//

import UIKit

class LiftStatusContext: NSObject {
    let openingStatus = LiftOpeningStatus()
    let closingStatus = LiftClosingStatus()
    let runningStatus = LiftRunningStatus()
    let stoppingStatus = LiftStoppingStatus()
    
    private var liftStatus: LiftStatus!
    
//    func open() {
//        liftStatus.open()
//    }
//    
//    func close() {
//        liftStatus.close()
//    }
//    
//    func run() {
//        liftStatus.run()
//    }
//    
//    func stop() {
//        liftStatus.stop()
//    }
}
