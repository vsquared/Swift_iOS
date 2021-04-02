//
//  ViewController.swift
//  btnGrid
//
//  Created by vsquared.
//

import UIKit

class ViewController: UIViewController {

        @objc func btnAction(_ sender:UIButton) {
            print("btnID =",sender.tag)
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            let _rows : Int = 6
            let _cols : Int = 7
            let _l : CGFloat = 30 // left offset
            let _t : CGFloat = 80 // top offset
            let _hg : CGFloat = 10 // space between rows
            let _vg : CGFloat = 10 // space betwee cols
            let _btnW = (view.frame.size.width - 140)/CGFloat(_cols)
            let _btnH : CGFloat = 60
            var id = 1

            for k in 0..<_rows {
             for j in 0..<_cols {
                let left = _l + CGFloat(j)*(_btnW + _vg)
                let top = _t + CGFloat(k)*(_btnH + _hg)
                let button = UIButton(frame: CGRect(x: left, y: top, width: _btnW, height: _btnH))
                button.tag = id
                button.setTitle("\(button.tag)", for: .normal)
                button.backgroundColor = .lightGray
                button.setTitleColor(.black, for: .normal)
                button.addTarget(self, action: #selector(self.btnAction(_:)), for: .touchUpInside)
                view.addSubview(button)
                id += 1
             }
            }
            
        }
    
}

let viewController = ViewController()
