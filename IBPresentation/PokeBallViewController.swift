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
  
  @IBAction func pokeBallDidTap(sender: AnyObject) {
    pokeBallButton.configAnimatableProperties()
    pokeBallButton.x = 0
    pokeBallButton.y = blurView.frame.origin.y - pokeBallButton.frame.origin.y
    
    pokeBallButton.moveBy {
      self.blurView.flipX {
        self.blurView.fadeOut {
          self.pokeBallButton.repeatCount = 3
          self.pokeBallButton.squeeze()
        }
      }
    }
  }
  
}
