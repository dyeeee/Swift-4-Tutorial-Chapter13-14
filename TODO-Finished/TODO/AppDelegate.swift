//
//  AppDelegate.swift
//  TODO
//
//  Created by 刘铭 on 2018/2/23.
//  Copyright © 2018年 刘铭. All rights reserved.
//

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    
    print(Realm.Configuration.defaultConfiguration.fileURL!)
    
    do {
      _ = try Realm()
    } catch {
      print("初始化Realm发生错误。")
    }
    
    return true
  }

  func applicationWillResignActive(_ application: UIApplication) {
    
  }

  func applicationDidEnterBackground(_ application: UIApplication) {
    print("applicationDidEnterBackground")
  }

  func applicationWillEnterForeground(_ application: UIApplication) {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
  }

  func applicationDidBecomeActive(_ application: UIApplication) {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
  }

  func applicationWillTerminate(_ application: UIApplication) {
  
  }

}

