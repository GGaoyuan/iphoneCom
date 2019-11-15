//
//  TMCalendarViewController.swift
//  iphoneCom
//
//  Created by 高源 on 2019/11/15.
//  Copyright © 2019 高源. All rights reserved.
//

import UIKit
import SnapKit

class TMCalendarViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calendarView = CalendarView(begin: "2019-1-10", end: "2022-1-10")
        view.addSubview(calendarView)
        calendarView.snp.makeConstraints { (m) in
            m.edges.equalToSuperview()
        }
        calendarView.clickItemBlock = { [weak self] in
            guard let self = self else {return}
            let vc = TMScheduleViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
}
