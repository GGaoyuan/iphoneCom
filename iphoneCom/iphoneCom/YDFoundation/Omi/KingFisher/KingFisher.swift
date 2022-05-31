//
//  KingFisher.swift
//  iphoneCom
//
//  Created by gaoyuan on 2021/7/2.
//

import UIKit

public struct KingFisherWrapper<Base> {
    public let base: Base
    public init(_ base: Base) {
        self.base = base
    }
}

public protocol KingFisherCompatible: AnyObject {}
extension KingFisherCompatible {
    public var KF: KingFisherWrapper<Self> {
        get { return KingFisherWrapper(self) }
        set {}
    }
}


public protocol KingfisherCompatibleValue {}
extension  KingfisherCompatibleValue {
    public var KF: KingFisherWrapper<Self> {
        get { return KingFisherWrapper(self) }
        set {}
    }
}

extension UIImageView: KingFisherCompatible {}
