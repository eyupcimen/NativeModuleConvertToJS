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
  
  override static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
}
