//
//  CounterView.swift
//  CounterApp
//
//  Created by eyup cimen on 19.11.2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

import UIKit
class CounterView: UIView {
  
  @objc var count = 0 {
    didSet {
      button.setTitle(String(describing: count), for: .normal)
    }
  }
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.addSubview(button)
    increment()
  }
  
  lazy var button: UIButton = {
    let button = UIButton.init(type: UIButton.ButtonType.system)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 50)
    button.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    button.addTarget(
      self,
      action: #selector(increment),
      for: .touchUpInside
    )
    return button
  }()
  
  @objc
  func increment() {
    count += 1
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
