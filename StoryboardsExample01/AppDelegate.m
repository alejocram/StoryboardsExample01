//
//  AppDelegate.m
//  StoryboardsExample01
//
//  Created by Alejocram on 19/07/15.
//  Copyright (c) 2015 IdeasLab. All rights reserved.
//

#import "AppDelegate.h"
#import "BusinessTableViewController.h"
#import "Business.h"

@interface AppDelegate ()

@end

@implementation AppDelegate{
    NSMutableArray *_businesses;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    _businesses = [NSMutableArray arrayWithCapacity:20];
    
    Business *business = [[Business alloc] init];
    business.name = @"Negocio 1";
    business.details = @"Negocio de ejemplo 1";
    business.rating = 4;
    [_businesses addObject:business];
    
    business = [[Business alloc] init];
    business.name = @"Negocio 2";
    business.details = @"Negocio de ejemplo 2";
    business.rating = 5;
    [_businesses addObject:business];
    
    business = [[Business alloc] init];
    business.name = @"Negocio 3";
    business.details = @"Negocio de ejemplo 3";
    business.rating = 2;
    [_businesses addObject:business];
    
    //Se pasa de manera programatica, los negocios
    //Se sabe que la primera es un TabBarController
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
    //En la primera posicion, se tiene un TabBar
    UINavigationController *navigationController = [tabBarController viewControllers][0];
    //En la primera se encuentra el TableViewController
    BusinessTableViewController *businessViewController = [navigationController viewControllers][0];
    businessViewController.business = _businesses;
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
