//
//  ViewController.swift
//  timer
//
//  Created by vsquared.
//

import UIKit

class ViewController: UIViewController {
    var view1: UIView!
    var view2: UIView!
    var view3: UIView!
    var timer: Timer!
    var index: Int = 0
    var btn : UIButton!
    
    @objc func changeColor() {
     
     if(index > 2) {index = 0 }
     if(index == 0){
      view!.addSubview (view1)
     }
     else if(index == 1){
      view!.addSubview (view2)
     }
     else if(index == 2){
      view!.addSubview (view3)
     }
     index = index + 1
    }

    @objc func start_StopTimer(_ sender:AnyObject){
    btn?.isSelected.toggle()
    if sender.isSelected {
     timer = Timer.scheduledTimer(timeInterval: 0.8, target: self, selector: #selector(changeColor), userInfo: nil, repeats: true)
        btn.backgroundColor = UIColor.red
    } else {
     timer?.invalidate()
        btn.backgroundColor = UIColor.green
    }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemYellow
        
        // **** View 1 **** //
        view1 = UIView(frame:CGRect(x:20, y:60, width: view.frame.size.width - 40, height:280))
        view1.layer.backgroundColor = UIColor.green.cgColor
          
        // **** View 2 **** //
        view2 = UIView(frame:CGRect(x:20, y:60, width: view.frame.size.width - 40, height:280))
        view2.layer.backgroundColor = UIColor.yellow.cgColor

        // **** View 3 **** //
        view3 = UIView(frame:CGRect(x:20, y:60, width: view.frame.size.width - 40, height:280))
        view3.layer.backgroundColor = UIColor.blue.cgColor
        
        // **** Start/Stop Button **** //
        btn = UIButton(frame: CGRect(x: 20, y: 400, width: view.frame.size.width - 40, height: 40))
        btn.isSelected = false
        btn.setTitle("Start", for: .normal)
        btn.setTitle("Stop", for: .selected)
        btn.backgroundColor = UIColor.green
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.setTitleColor(UIColor.white, for: .selected)
        btn.addTarget(self,action: #selector(start_StopTimer(_:)), for: .touchUpInside)
        view.addSubview(btn)
    }
}
