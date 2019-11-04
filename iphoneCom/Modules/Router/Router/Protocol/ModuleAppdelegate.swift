//
//  ModuleAppdelegate.swift
//  Router
//
//  Created by 高源 on 2019/9/11.
//  Copyright © 2019 高源. All rights reserved.
//

import UIKit

public protocol ModuleAppdelegate {
    func module_application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?)
    func module_applicationWillResignActive(_ application: UIApplication)
    func module_applicationDidEnterBackground(_ application: UIApplication)
    func module_applicationWillEnterForeground(_ application: UIApplication)
    func module_applicationDidBecomeActive(_ application: UIApplication)
    func module_applicationWillTerminate(_ application: UIApplication)
}

