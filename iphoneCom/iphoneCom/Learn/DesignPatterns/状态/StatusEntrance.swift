//
//  StatusEntrance.swift
//  iphoneCom
//
//  Created by gaoyuan on 2021/6/1.
//

import UIKit

class StatusEntrance: NSObject {
    static func main() {
        let lift = Lift()
        lift.open()
        lift.close()
        lift.run()
        lift.stop()
    }
}
