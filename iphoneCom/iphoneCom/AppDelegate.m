//
//  AppDelegate.m
//  iphoneCom
//
//  Created by gaoyuan on 2020/12/21.
//

#import "AppDelegate.h"
#import "iphoneCom-Swift.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.window makeKeyAndVisible];
    YDTabBarController *tabBarController = [[YDTabBarController alloc] init];
    self.window.rootViewController = tabBarController;
    return YES;
}


@end
