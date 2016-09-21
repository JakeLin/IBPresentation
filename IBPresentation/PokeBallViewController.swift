//
//  PokeBallViewController.swift
//  IBPresentation
//
//  Created by Jake Lin on 8/20/16.
//  Copyright © 2016 Jake Lin. All rights reserved.
//

import UIKit
import IBAnimatable

class PokeBallViewController: UIViewController {
  @IBOutlet var blurView: AnimatableView!
  @IBOutlet var pokeBallButton: AnimatableButton!
  
  @IBAction func pokeBallDidTap(_ sender: AnyObject) {
    pokeBallButton.configureAnimatableProperties()
    let x: Double = 0
    let y: Double = Double(blurView.frame.origin.y - pokeBallButton.frame.origin.y)
    
    pokeBallButton.moveBy(x: x, y: y) {
      self.blurView.flip(axis: .x) {
        self.blurView.fade(.out) {
          self.pokeBallButton.squash(repeatCount: 3)
        }
      }
    }
  }
  
}
