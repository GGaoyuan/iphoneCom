//
//  AppDelegate.m
//  iphoneCom
//
//  Created by gaoyuan on 2018/6/20.
//  Copyright © 2018年 gaoyuan. All rights reserved.
//

#import "AppDelegate.h"
#import "BaseNavigationController.h"
#import "YDHomeViewController.h"
#import "AlgorithmEntrance.h"
#import "GCDEntrance.h"
#import "BlockEntrance.h"
#import "NetWorkEntrance.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//    [self initHomeViewController];
//    [self initAlgorithmController];
//    [self initGCDController];
    [self initBlockController];
//    [self initNetWorkViewController];
    return YES;
}

- (void)initNetWorkViewController {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    NetWorkEntrance *netWorkEntrance = [[NetWorkEntrance alloc] init];
    BaseNavigationController *rootNav = [[BaseNavigationController alloc] initWithRootViewController:netWorkEntrance];
    self.window.rootViewController = rootNav;
    [self.window makeKeyAndVisible];
}

- (void)initHomeViewController {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    YDHomeViewController *homeViewController = [[YDHomeViewController alloc] init];
    BaseNavigationController *rootNav = [[BaseNavigationController alloc] initWithRootViewController:homeViewController];
    self.window.rootViewController = rootNav;
    [self.window makeKeyAndVisible];
}

- (void)initAlgorithmController {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    AlgorithmEntrance *algorithmEntrance = [[AlgorithmEntrance alloc] init];
    BaseNavigationController *rootNav = [[BaseNavigationController alloc] initWithRootViewController:algorithmEntrance];
    self.window.rootViewController = rootNav;
    [self.window makeKeyAndVisible];
}

- (void)initGCDController {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    GCDEntrance *gcdEntrance = [[GCDEntrance alloc] init];
    BaseNavigationController *rootNav = [[BaseNavigationController alloc] initWithRootViewController:gcdEntrance];
    self.window.rootViewController = rootNav;
    [self.window makeKeyAndVisible];
}

- (void)initBlockController {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    BlockEntrance *blockEntrance = [[BlockEntrance alloc] init];
    BaseNavigationController *rootNav = [[BaseNavigationController alloc] initWithRootViewController:blockEntrance];
    self.window.rootViewController = rootNav;
    [self.window makeKeyAndVisible];
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
