//
//  GymHomeViewController.swift
//  Gym
//
//  Created by 高源 on 2019/9/11.
//  Copyright © 2019 gaoyuan. All rights reserved.
//

import UIKit

class GymHomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        let label = UILabel()
        label.text = "Gym"
        label.sizeToFit()
        self.view.addSubview(label)
    }
}
