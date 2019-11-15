//
//  TMBaseViewController.swift
//  iphoneCom
//
//  Created by 高源 on 2019/11/15.
//  Copyright © 2019 高源. All rights reserved.
//

import UIKit

class TMBaseViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let closeBtn = UIButton(type: .custom)
        closeBtn.addTarget(self, action: #selector(closeAction), for: .touchUpInside)
        closeBtn.setImage(UIImage.init(named: "nav_close"), for: .normal)
        let closeItem = UIBarButtonItem(customView: closeBtn)
        closeBtn.layer.removeAllAnimations()
        navigationItem.rightBarButtonItem = closeItem
    }
    
    @objc private func closeAction() {
        navigationController?.dismiss(animated: true, completion: nil)
    }
}
