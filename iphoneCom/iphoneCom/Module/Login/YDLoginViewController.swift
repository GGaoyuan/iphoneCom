//
//  YDLoginViewController.swift
//  iphoneCom
//
//  Created by gaoyuan on 2021/6/7.
//

import UIKit

class YDLoginViewController: YDViewController {

    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var pwdTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgetPwdButton: UIButton!
    @IBOutlet weak var registButton: UIButton!
    @IBOutlet weak var showPwdButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func showPwdButtonAction(_ sender: Any) {
        print("showPwdButtonAction")
    }
    
    @IBAction func loginButtonAction(_ sender: Any) {
        print("loginButtonAction")
    }
    
    
    @IBAction func forgetPwdButtonAction(_ sender: Any) {
        print("forgetPwdButtonAction")
    }
    
    @IBAction func registButtonAction(_ sender: Any) {
        print("registButtonAction")
    }
    
    
}
