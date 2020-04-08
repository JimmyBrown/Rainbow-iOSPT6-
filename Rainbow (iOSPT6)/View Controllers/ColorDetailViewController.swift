//
//  ColorDetailViewController.swift
//  Rainbow (iOSPT6)
//
//  Created by Jimmy Brown on 4/7/20.
//  Copyright © 2020 Jimmy Brown. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {
  
  var cellColor: Color?

    override func viewDidLoad() {
        super.viewDidLoad()

       updateViews()
    }
    
  func updateViews() {
    if let color = cellColor {
      title = color.colorName
      view.backgroundColor = color.color
    }
  }


}
