//
//  WWDCShare.swift
//  iphoneCom
//
//  Created by gaoyuan on 2021/7/11.
//

import UIKit

class Message: NSObject {
    var name: String?
//    var array = [1, 2]
    convenience init(_ name: String) {
        self.init()
//        self.name = name;
    }
    
    func test() -> [Int] {
        return [1, 2]
    }
}

class WWDCShare: NSObject {
    class func main() {
        let messages = [Message("1"), Message("2"), Message(), Message("3"), Message("4")]
        var names: [String] = []
        for message in messages {
            if let name = message.name {
                names.append(name)
            }
        }
        let _ = messages.filter({$0.name != nil}).map({$0.name})
        let _ = messages.compactMap({$0.name})
        
//        let numbersCompound: [[Int]] = [[1, 2, 3, 4], [5, 6, 7]]
        let result = messages.map({$0.test()}).joined()
        // [[3, 4, 5], [6, 7, 8]]
//        var flatRes = numbersCompound.flatMap { $0.map{ $0 + 2 } }
        
//        print("")
//        print(resultNormal, resultCompact)
    }
}
