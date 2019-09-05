//
//  RCTBridgeConnector.swift
//  ReactNativeTemplate
//
//  Created by Andrei Terentiev on 9/5/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

import Foundation

class ReactBridgeConnector: NSObject {
  var bridge: RCTBridge?
  
  static let sharedInstance = ReactBridgeConnector()
  
  func createBridgeIfNeeded() -> RCTBridge {
    if bridge == nil {
      bridge = RCTBridge.init(delegate: self, launchOptions: nil)
    }
    return bridge!
  }
  
  func viewForModule(_ moduleName: String, initialProperties: [String : Any]?) -> RCTRootView {
    let viewBridge = createBridgeIfNeeded()
    let rootView: RCTRootView = RCTRootView(
      bridge: viewBridge,
      moduleName: moduleName,
      initialProperties: initialProperties)
    return rootView
  }
}

extension ReactBridgeConnector: RCTBridgeDelegate {
  func sourceURL(for bridge: RCTBridge!) -> URL! {
    /* TODO: Get this to work with Shared Settings as opposed to manually setting host
    let jsCodeLocation: URL
    jsCodeLocation = RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index", fallbackResource:nil)
    return jsCodeLocation
    */

    return URL(string: "http://localhost:8081/index.bundle?platform=ios")
  }
}
