//
//  CalendarViewHeader.swift
//  iphoneCom
//
//  Created by 高源 on 2019/11/14.
//  Copyright © 2019 高源. All rights reserved.
//

import UIKit

let CalendarViewHeaderIdentify = "CalendarViewHeaderIdentify"

class CalendarViewHeader: UICollectionReusableView {

    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        titleLabel.text = "123123"
    }
    
}
