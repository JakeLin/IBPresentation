//
//  PopViewController.swift
//  IBPresentation
//
//  Created by Jake Lin on 10/5/16.
//  Copyright © 2016 Jake Lin. All rights reserved.
//

import UIKit

class PopViewController: UIViewController {

  @IBOutlet var popButton: AnimatableRaisedButton!
  
  
  @IBAction func popButtonDidTap(_ sender: AnyObject) {
    popButton.pop(repeatCount: 3)
  }
}
