//
//  AppDelegate.m
//  个人模块图片Demo
//
//  Created by 曹航玮 on 2016/12/7.
//  Copyright © 2016年 曹航玮. All rights reserved.
//

#import "AppDelegate.h"
#import "HWMineVC.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window setRootViewController:[HWMineVC mineVC]];
    [self.window makeKeyAndVisible];
    return YES;
}


@end
