//
//  CalendarHeaderView.swift
//  iphoneCom
//
//  Created by 高源 on 2019/11/13.
//  Copyright © 2019 高源. All rights reserved.
//

import UIKit

public let CalendarHeaderViewIdentify = "CalendarHeaderViewIdentify"

class CalendarHeaderView: UICollectionReusableView {
    
    /// 星期天
    @IBOutlet weak var sunLabel: UILabel!
    /// 星期一
    @IBOutlet weak var monLabel: UILabel!
    /// 星期二
    @IBOutlet weak var tueLabel: UILabel!
    /// 星期三
    @IBOutlet weak var wedLabel: UILabel!
    /// 星期四
    @IBOutlet weak var ThuLabel: UILabel!
    /// 星期五
    @IBOutlet weak var FriLabel: UILabel!
    /// 星期六
    @IBOutlet weak var SatLabel: UILabel!
    
    var labels = [UILabel]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        labels.append(sunLabel)
        labels.append(monLabel)
        labels.append(tueLabel)
        labels.append(wedLabel)
        labels.append(ThuLabel)
        labels.append(FriLabel)
        labels.append(SatLabel)
        
        for label in labels {
            label.backgroundColor = .red
        }
    }
    
}
