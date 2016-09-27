//
//  ButtonsViewController.swift
//  IBPresentation
//
//  Created by Jake Lin on 9/27/16.
//  Copyright © 2016 Jake Lin. All rights reserved.
//

import UIKit
import IBAnimatable

class ButtonsViewController: UIViewController {
  
  @IBOutlet var animatableButton: AnimatableButton!
  
  @IBAction func animatableButtonDidTap(_ sender: AnyObject) {
    animatableButton.squash(repeatCount: 1)
  }
}
