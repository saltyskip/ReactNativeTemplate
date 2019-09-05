//
//  AppDelegate.swift
//  ReactNativeTemplate
//
//  Created by Andrei Terentiev on 9/3/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

import Foundation

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?
  var bridge: RCTBridge!
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
  
    
    self.window = UIWindow(frame: UIScreen.main.bounds)
    self.window?.rootViewController = MainTabbar.init()
    self.window?.makeKeyAndVisible()
    return true
  }
}
