//
//  ViewController.swift
//  btnGrid
//
//  Created by vsquared.
//

import UIKit

class ViewController: UIViewController {

    @objc func btnAction(_ sender:UIButton) {
        print("sender: ",sender.tag)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for x in 0..<5 {
        let button = UIButton(frame: CGRect(x: 60, y: 60 + 80*CGFloat(x), width: view.frame.size.width - 120, height: 60))
        button.tag = x + 1
        button.setTitle("\(button.tag)", for: .normal)
        button.backgroundColor = .lightGray
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(self.btnAction(_:)), for: .touchUpInside)
        view.addSubview(button)
        }
    }
}

let viewController = ViewController()
