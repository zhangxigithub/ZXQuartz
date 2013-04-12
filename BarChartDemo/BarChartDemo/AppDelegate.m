//
//  AppDelegate.m
//  BarChartDemo
//
//  Created by 张玺 on 13-4-11.
//  Copyright (c) 2013年 张玺. All rights reserved.
//

#import "AppDelegate.h"
#import "BarChart.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor colorWithRed:235.0/255.0
                                                  green:245.0/255.0
                                                   blue:231.0/255.0
                                                  alpha:1];
    
    
    //--
    
    NSArray *values = @[@20,@12,@28,@20,@15];
    
    BarChart *barChart = [[BarChart alloc] initWithFrame:CGRectMake(0, 100, 320, 180)
                                                  values:values];
    [self.window addSubview:barChart];
    barChart.barColor  = [UIColor colorWithRed:176.0/255.0
                                        green:212.0/255.0
                                         blue:131.0/255.0
                                        alpha:1];
    //--
    

    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}


@end
