//
//  RoundedRectButton.swift
//  RoundedRectButton
//
//  Created by vsquared.
//

import UIKit

class RoundedRectButton: UIButton {
override func draw(_ rect: CGRect) {
    let btn = UIBezierPath(roundedRect: bounds, cornerRadius: 15.0)
    let btnColor = UIColor.green
     btnColor.set()
     btn.fill()
  if(self.state) == .selected {
   let btnColor = UIColor.red
   btnColor.set()
   btn.fill()
  }
 }
}

