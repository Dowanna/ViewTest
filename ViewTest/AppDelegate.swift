//
//  AppDelegate.swift
//  ViewTest
//
//  Created by 松原　舜也 on 2018/07/04.
//  Copyright © 2018年 松原　舜也. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        self.window = UIWindow(frame: UIScreen.main.bounds)

        // create tabBarController
        let tabController = UITabBarController()
        let vc1 = ViewController()
        let vc2 = SecondViewController()
        let vc3 = ThirdViewController()
        vc1.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        vc2.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        vc3.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 2)
        tabController.viewControllers = [vc1, vc2, vc3]
        
        self.window?.rootViewController = tabController
        self.window?.makeKeyAndVisible()

        return true
    }

    private func fullScreenWindow() -> UIWindow {
        return UIWindow(frame: UIScreen.main.bounds)
    }


    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

