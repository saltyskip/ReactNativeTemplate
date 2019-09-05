//
//  Tab2ViewController.swift
//  ReactNativeTemplate
//
//  Created by Andrei Terentiev on 9/5/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

import Foundation

class Tab2ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    let rootView = ReactBridgeConnector.sharedInstance.viewForModule(
      "ReactNativeTemplate",
      initialProperties: nil
    )
    self.view = rootView
  }
}
