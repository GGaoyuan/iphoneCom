//
//  RootTabBarController.swift
//  iphoneCom
//
//  Created by gaoyuan on 2018/3/7.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

import UIKit

class RootTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = ViewControllerF()
        vc1.tabBarItem.title = "1"
        let vc2 = ViewControllerS()
        vc2.tabBarItem.title = "2"
        self.addChildViewController(vc1)
        self.addChildViewController(vc2)
        
    }
}


//YXNavigationViewController *ctrlNav = [[YXNavigationViewController alloc]
//    initWithRootViewController:ctrl];
//ctrlNav.tabBarItem.image = [UIImage imageNamed:image];
//ctrlNav.tabBarItem.title = title;
//ctrlNav.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
//[self addChildViewController:ctrlNav];
//[_dock tabBarItem:ctrlNav.tabBarItem index:index];

//        YXHomeViewController *homelVC = [[YXHomeViewController alloc] init];
//        [self addEveryOneController:homelVC image:@"tabbar_home_background"
//        selectedImage:@"tabbar_home_hl_background"  title:@"天眼" index:0];
//
//        //论坛
//        YXBBSViewController *bbsVC = [[YXBBSViewController alloc] init];
//        [self addEveryOneController:bbsVC image:@"tabbar_bbs_background"
//        selectedImage:@"tabbar_bbs_hl_background"  title:@"社区" index:1];
