//
//  AppDelegate.swift
//  Dovs App
//
//  Created by Dov Alperin on 4/13/16.
//  Copyright © 2016 Dov Alperin. All rights reserved.
//  Comment

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        // Override point for customization after application launch.
        let notificationTypes: UIUserNotificationType = [UIUserNotificationType.alert, UIUserNotificationType.badge, UIUserNotificationType.sound]
        let pushNotificationSettings = UIUserNotificationSettings(types: notificationTypes, categories: nil)
        application.registerUserNotificationSettings(pushNotificationSettings)
        application.registerForRemoteNotifications()
        //sets up push notifications
        
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
        let notification = UILocalNotification()
        notification.fireDate = NSDate(timeIntervalSinceNow: 60) as Date
        notification.alertBody = "Hey you! You have not opened this app in a bit"
        notification.alertAction = "be awesome!"
        notification.soundName = UILocalNotificationDefaultSoundName
        notification.userInfo = ["CustomField1": "w00t"]
        UIApplication.shared().scheduleLocalNotification(notification)
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        print("DEVICE PUSH NOTIFICATION TOKEN = \(deviceToken)", terminator: "")
        //this function is if push notifications was accepted
    }
    
    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: NSError) {
        //if push notifications failed with error
        print("Push notification errror: \(error)", terminator: "")
       
    }
    
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [NSObject : AnyObject]) {
        //when recieved push notificationz
        print(userInfo, terminator: "")
    }
    
    }


