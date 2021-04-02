//
//  DotView.swift
//  dotView
//
//  Created by vsquared.
//

import UIKit

class DotView: UIView {
    var radius : CGFloat = 75.0
    var dotColor : UIColor = UIColor.red

    @objc func changeDotColor(_ sender: UIColorWell ) {
        dotColor = sender.selectedColor!
        self.setNeedsDisplay()
    }

    @objc func changeRadius(_ sender: UISlider ) {
     radius = CGFloat(sender.value)
     self.setNeedsDisplay()
    }

    override func draw(_ rect: CGRect) {
     super.draw(rect)
        let bkgrnd = UIBezierPath(rect: rect)
        let bkgrndColor = UIColor.white
        bkgrndColor.set()
        bkgrnd.fill()

        let dotRect = CGRect(x:rect.size.width/2 - radius, y:rect.size.height/2 - radius, width:radius*2, height:radius*2)
        let dot = UIBezierPath(ovalIn: dotRect)
        dotColor.set()
        dot.fill()
    }
}

