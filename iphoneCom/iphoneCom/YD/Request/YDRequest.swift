//
//  YDRequest.swift
//  iphoneCom
//
//  Created by gaoyuan on 2021/6/7.
//

import UIKit
import Alamofire
import HandyJSON

class YDBaseModel: NSObject, HandyJSON {
    required override init() {}
}

class YDRequest: NSObject {
    
    enum HttpMethod: String {
        case post = "POST"
        case get = "GET"
    }

    enum NetStatus {
        case unknown, notReachable, wifi, wwan
    }

    enum NetError: String {
        case notConnected =     "无网络，请连接网络后重试"
        case timeout =          "网速太慢连接超时，请稍后重试"
        case server =           "服务器正在升级中，请稍后重试"
    }

    enum ContentType: String {
        case json = "application/json"
        case text = "text/plain"
        case jpg  = "image/jpeg"
        case png  = "image/png"
    }
    
    typealias failureBlock = (NetError, HandyJSON?, String?, String?, Error?) -> ()
    public typealias RequestParams = [String: Any]
}

// MARK: - 具体请求方法
extension YDRequest {
//    @discardableResult
    class func request<T: HandyJSON>(_ api: String,
                                     params: RequestParams,
                                     method: HttpMethod = .get,
                                     contentType: ContentType = .json,
                                     success: @escaping ((T) -> ()),
                                     failure: failureBlock? = nil) {
//        var forms = forms ?? NetParams()
    }
}
