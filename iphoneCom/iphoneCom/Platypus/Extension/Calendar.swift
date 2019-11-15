//
//  Calendar.swift
//  iphoneCom
//
//  Created by 高源 on 2019/11/15.
//  Copyright © 2019 高源. All rights reserved.
//

import Foundation

extension Calendar {
    static func days(forMonth month:Int) -> Int {
        let dateComponents = Calendar.current.dateComponents([.year,.month,.day], from: Date())
        switch (dateComponents.month! + month) % 12 {
        case 1,3,5,7,8,10,0:
            return month == 0 ? 32 - dateComponents.day! : 31
        case 4,6,9,11:
            return month == 0 ? 31 - dateComponents.day! : 30
        default:
            return dateComponents.isLeapMonth! ? (month == 0 ? 30 - dateComponents.day! : 29)  : (month == 0 ? 29 - dateComponents.day! : 28)
        }
    }
    
    static func schedule(forMonth month:Int) -> String {
        let dateComponents = Calendar.current.dateComponents([.year,.month,.day], from: Date())
        let year = dateComponents.year! + ((dateComponents.month! + month) / 12)
        let months = (dateComponents.month! + month) % 12 == 0 ? 12 : (dateComponents.month! + month) % 12
        return "\(year)年 \(months)月"
    }
    
    static func date(forMonth month:Int, day:Int) -> DateComponents {
        var dateComponents = Calendar.current.dateComponents([.year,.month,.day,.weekday], from: Date())
        let year = dateComponents.year! + ((dateComponents.month! + month) / 12)
        dateComponents.year = year
        dateComponents.month = (dateComponents.month! + month) % 12 == 0 ? 12 : (dateComponents.month! + month) % 12
        dateComponents.day = month == 0 ? dateComponents.day! + day : day + 1
        dateComponents.weekday = getWeekDay(dateTime: "\(year)-\(dateComponents.month! >= 10 ? "\(dateComponents.month!)" : "0\(dateComponents.month!)")-\(dateComponents.day! >= 10 ? "\(dateComponents.day!)" : "0\(dateComponents.day!)") 06:00:00")
        return dateComponents
    }
    
    static func getWeekDay(dateTime:String)->Int{
        let dateFmt = DateFormatter()
        dateFmt.dateFormat = "yyyy-MM-dd HH:mm:ss"
        dateFmt.timeZone = TimeZone.current
        let date = dateFmt.date(from: dateTime)
        
        return Calendar.current.dateComponents([.weekday], from: date!).weekday! - 1
    }
}
