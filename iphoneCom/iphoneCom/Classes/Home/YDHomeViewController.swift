//
//  YDHomeViewController.swift
//  iphoneCom
//
//  Created by gaoyuan on 2021/5/26.
//

import UIKit

class YDHomeViewController: YDViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userSession = YDUserSession.session
        userSession.userInfo.phoneNum = "gao"
        
        let userSession2 = YDUserSession.session
        print(userSession2.userInfo.userName)
        userSession2.userInfo.phoneNum = "yuan"
        
        let userSession3 = YDUserSession.session
        print(userSession3.userInfo.userName)

    }
}
