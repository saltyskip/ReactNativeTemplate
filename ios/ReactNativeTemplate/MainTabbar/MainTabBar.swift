//
//  MainTabBar.swift
//  ReactNativeTemplate
//
//  Created by Andrei Terentiev on 9/5/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

import Foundation
class MainTabbar: UITabBarController {
  override func viewDidLoad() {
    super.viewDidLoad()
    let tab1ViewController = ReactViewController.init("Tab1")
    tab1ViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 0)
    
    let tab2ViewController = ReactViewController.init("Tab2")
    tab2ViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
    
    let tab3ViewController = ReactViewController.init("Tab3")
    tab3ViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 0)
    
    
    let tabBarList = [tab1ViewController, tab2ViewController, tab3ViewController]
    
    viewControllers = tabBarList
  }
}
