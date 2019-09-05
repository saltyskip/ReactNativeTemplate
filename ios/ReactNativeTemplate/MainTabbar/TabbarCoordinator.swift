//
//  TabbarCoordinator.swift
//  ReactNativeTemplate
//
//  Created by Andrei Terentiev on 9/5/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

import Foundation

@objc(TabbarCoordinator)
class TabbarCoordinator: NSObject {
  @objc func navigateTo(_ route: String) {
    switch route {
    case "flow1":
      navigateToFlow1()
    case "flow2":
      navigateToFlow2()
    default:
      fatalError("This route does not exist")
    }
  }
  
  private func navigateToFlow1() {
    DispatchQueue.main.async {
      let nav = UINavigationController(rootViewController: ReactViewController("Flow1Screen", dismissable: true))
      UIApplication.topViewController()?.present(nav, animated: true)
    }
  }
  
  private func navigateToFlow2() {
    DispatchQueue.main.async {
      let nav = UINavigationController(rootViewController: ReactViewController("Flow2Screen", dismissable: true))
      UIApplication.topViewController()?.present(nav, animated: true)
    }
  }
  
  @objc static func requiresMainQueueSetup() -> Bool {
    return false
  }
}
