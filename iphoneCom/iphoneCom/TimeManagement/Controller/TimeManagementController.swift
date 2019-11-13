//
//  TimeManagementController.swift
//  iphoneCom
//
//  Created by 高源 on 2019/11/12.
//  Copyright © 2019 高源. All rights reserved.
//

import UIKit
import SnapKit

class TimeManagementController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let calendarView = CalendarView(begin: "2018-1-10", end: "2020-1-10")
        view.addSubview(calendarView)
        calendarView.snp.makeConstraints { (m) in
            m.edges.equalToSuperview()
        }
        
    }

}

