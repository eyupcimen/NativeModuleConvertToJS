//
//  CounterViewManager.swift
//  CounterApp
//
//  Created by eyup cimen on 19.11.2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

import Foundation

@objc(CounterViewManager)
class CounterViewManager: RCTViewManager {
  
  override func view() -> UIView! {
    return CounterView()
  }
  
  @objc func updateFromManager(_ node: NSNumber, count: NSNumber) {
    
    DispatchQueue.main.async {
      let component = self.bridge.uiManager.view( forReactTag: node ) as! CounterView
      component.update(value: count)
    }
  }
  
  override static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
}
