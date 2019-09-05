//
//  ReactViewController.swift
//  ReactNativeTemplate
//
//  Created by Andrei Terentiev on 9/5/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

import Foundation
class ReactViewController: UIViewController {
  var componentName: String
  var dismissable: Bool
  init(_ componentName: String, dismissable: Bool = false) {
    self.componentName = componentName
    self.dismissable = dismissable
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("Must use component Name initializer in order to initialize a React View Controller")
  }
  
  override func viewDidLoad() {
    let rootView = ReactBridgeConnector.sharedInstance.viewForModule(
      componentName,
      initialProperties: nil
    )
    
    if (dismissable) {
      navigationItem.leftBarButtonItem = UIBarButtonItem(title: "DONE", style: .plain, target: self, action: #selector(dismissTapped))
    }
    
    self.view = rootView
    super.viewDidLoad()

  }
}
