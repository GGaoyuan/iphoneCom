//
//  AppDelegate.m
//  iphoneCom
//
//  Created by gaoyuan on 2020/12/21.
//

#import "AppDelegate.h"
#import "iphoneCom-Swift.h"
//#import <FlutterPluginRegistrant/GeneratedPluginRegistrant.h>

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.window makeKeyAndVisible];
    YDTabBarController *tabBarController = [[YDTabBarController alloc] init];
    self.window.rootViewController = tabBarController;
//    [self registFlutterEngine];
    return YES;
}

//- (void)registFlutterEngine {
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        self.flutterEngine = [[FlutterEngine alloc] initWithName:@"io.flutter" project:nil];
//        [self.flutterEngine runWithEntrypoint:nil];
//        [GeneratedPluginRegistrant registerWithRegistry:self.flutterEngine];
//    });
//}

@end
