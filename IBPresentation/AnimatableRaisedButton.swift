//
//  AnimatableRaisedButton.swift
//  IBPresentation
//
//  Created by Jake Lin on 9/27/16.
//  Copyright © 2016 Jake Lin. All rights reserved.
//

import UIKit
import Material
import IBAnimatable

@IBDesignable
class AnimatableRaisedButton: RaisedButton, Animatable {
  open var animationType: AnimationType = .none
  @IBInspectable var _animationType: String? {
    didSet {
      animationType = AnimationType(string: _animationType)
    }
  }
  @IBInspectable open var autoRun: Bool = true
  @IBInspectable open var duration: Double = .nan
  @IBInspectable open var delay: Double = .nan
  @IBInspectable open var damping: CGFloat = .nan
  @IBInspectable open var velocity: CGFloat = .nan
  @IBInspectable open var force: CGFloat = .nan
  
  open override func awakeFromNib() {
    super.awakeFromNib()
    configureAnimatableProperties()
  }

  open override func layoutSubviews() {
    super.layoutSubviews()
    autoRunAnimation()
  }
}

