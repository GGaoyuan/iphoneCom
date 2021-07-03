//
//  YDHomePageViewController.swift
//  iphoneCom
//
//  Created by gaoyuan on 2021/5/26.
//

import UIKit
import YDSwift

@objc class YDTabBarController: UITabBarController {
    
    var naviControllers: [YDNavigationController] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let homeViewController = YDHomeViewController()
        homeViewController.tabBarItem = UITabBarItem(title: nil, image:UIImage(named: "tabBarIcon_0_unselected")?.withRenderingMode(.alwaysOriginal), selectedImage: UIImage(named: "tabBarIcon_0_selected")?.withRenderingMode(.alwaysOriginal))
        homeViewController.title = "首页"
        let homeNavigationController = YDNavigationController(rootViewController: homeViewController)
        
//        let propertyViewController = YDMineViewController()
//        propertyViewController.tabBarItem = UITabBarItem(title: nil, image:UIImage(named: "tabBarIcon_2_unselected")?.withRenderingMode(.alwaysOriginal), selectedImage: UIImage(named: "tabBarIcon_2_selected")?.withRenderingMode(.alwaysOriginal))
//        propertyViewController.title = "资产"
//        let propertyNavigationController = YDNavigationController(rootViewController: propertyViewController)
        
        let mineViewController = YDMineViewController()
        mineViewController.tabBarItem = UITabBarItem(title: nil, image:UIImage(named: "tabBarIcon_1_unselected")?.withRenderingMode(.alwaysOriginal), selectedImage: UIImage(named: "tabBarIcon_1_selected")?.withRenderingMode(.alwaysOriginal))
        mineViewController.title = "我的"
        let mineNavigationController = YDNavigationController(rootViewController: mineViewController)
        
        
        viewControllers = [homeNavigationController , mineNavigationController]
        
        tabBar.itemPositioning = .centered
        tabBar.itemWidth = kScreenWidth / 3.0 - 15 * 4 / 3.0
        tabBar.itemSpacing = 15
        
        tabBar.backgroundImage = UIImage()
        tabBar.backgroundColor = rgba(255,255,255,1)
        tabBar.unselectedItemTintColor = rgba(18,18,18,1)
        tabBar.tintColor = .blue
        tabBar.shadowImage = UIImage()
        
        
        let line = UIView(frame: CGRect(x:0, y:-1, width:kScreenWidth, height:1))
        line.backgroundColor = .green
        tabBar.addSubview(line)
        
        let halfLine = UIView(frame: CGRect(x:0, y:0, width:kScreenWidth, height:1/UIScreen.main.scale))
        halfLine.backgroundColor = .red
        line.addSubview(halfLine)
    }
}
