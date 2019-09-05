//
//  UIApplication.swift
//  ReactNativeTemplate
//
//  Created by Andrei Terentiev on 9/5/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

import Foundation
import UIKit

extension UIApplication {
  static var appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
  
  class func topViewController(base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
    if let nav = base as? UINavigationController {
      return topViewController(base: nav.visibleViewController)
    }
    if let tab = base as? UITabBarController {
      if let selected = tab.selectedViewController {
        return topViewController(base: selected)
      }
    }
    if let presented = base?.presentedViewController {
      return topViewController(base: presented)
    }
    return base
  }
  
}
