//
//  Page3ViewController.swift
//  IBPresentation
//
//  Created by Jake Lin on 8/12/16.
//  Copyright © 2016 Jake Lin. All rights reserved.
//

import UIKit

class DesignerNewsViewController: UIViewController {
  
  @IBOutlet var webView: UIWebView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let url = URL(string: "http://design.lc/designer-news-statistics-2015/")!
    webView.loadRequest(URLRequest(url: url))
  }
}
