//
//  AppDelegate.m
//  demo
//
//  Created by 张 玺 on 13-3-29.
//  Copyright (c) 2013年 me.zhangxi. All rights reserved.
//

#import "AppDelegate.h"
#import "Canvas.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.viewController = [[UIViewController alloc] init];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    
    
    
    
    
    //添加画布类
    Canvas *canvas = [[Canvas alloc] initWithFrame:self.viewController.view.bounds];
    [self.viewController.view addSubview:canvas];
    
    
    
    
    
    return YES;
}



@end
