//
//  ProtocolsViewController.swift
//  IBPresentation
//
//  Created by Jake Lin on 8/18/16.
//  Copyright © 2016 Jake Lin. All rights reserved.
//

import UIKit
import IBAnimatable

class ProtocolsViewController: UIViewController {
  
  @IBOutlet var animatableButton: AnimatableButton!
  
  @IBAction func animatableButtonDidTap(sender: AnyObject) {
    
    animatableButton.squeeze()
  }
  
}
