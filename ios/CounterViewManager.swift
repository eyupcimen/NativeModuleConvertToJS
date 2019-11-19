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
    let label = UILabel()
    label.text = "Swift Counter"
    label.textAlignment = .center
    return label
  }
}
