//
//  GymAppdelegate.swift
//  Gym
//
//  Created by 高源 on 2019/9/11.
//  Copyright © 2019 gaoyuan. All rights reserved.
//

import UIKit
import Router

class GymAppdelegate: NSObject, ModuleAppdelegate {
    
    func module_application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]?) {
        print("gym_module_application")
    }
    
    func module_applicationWillResignActive(_ application: UIApplication) {
        print("gym_module_applicationWillResignActive")
    }
    
    func module_applicationDidEnterBackground(_ application: UIApplication) {
        print("gym_module_applicationWillResignActive")
    }
    
    func module_applicationWillEnterForeground(_ application: UIApplication) {
        print("gym_module_applicationWillResignActive")
    }
    
    func module_applicationDidBecomeActive(_ application: UIApplication) {
        print("gym_module_applicationDidBecomeActive")
    }
    
    func module_applicationWillTerminate(_ application: UIApplication) {
        print("gym_module_applicationWillTerminate")
    }
}
