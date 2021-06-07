//
//  YDRetrievePwdViewController.swift
//  iphoneCom
//
//  Created by gaoyuan on 2021/6/7.
//

import UIKit

class YDRetrievePwdViewController: YDViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var nextStepButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "找回密码"
        
    }
    @IBAction func nextStepButtonAction(_ sender: Any) {
        print("nextStepButtonAction")
    }
    
}
