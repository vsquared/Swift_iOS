//
//  ViewController.swift
//  RoundedRectButton
//
//  Created by vsquared.
//

import UIKit

class ViewController: UIViewController {
    var btn : UIButton!
    
    @objc func btnAction(_ sender:AnyObject){
    btn?.isSelected.toggle()
    if sender.isSelected {
     print("selected")
    } else {
     print("not selected")
    }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemYellow
        
        // **** RoundedRect Button **** //
        btn = RoundedRectButton(frame: CGRect(x: 60, y: 200, width: view.frame.size.width - 120, height: 40))
        btn?.isSelected = false
        btn?.setTitle("Start", for: .normal)
        btn?.setTitle("Stop", for: .selected)
        btn?.setTitleColor(UIColor.black, for: .normal)
        btn?.setTitleColor(UIColor.white, for: .selected)
        btn?.addTarget(self,action: #selector(btnAction(_:)), for: .touchUpInside)
        view.addSubview(btn)
    }

}

