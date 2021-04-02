//
//  ViewController.swift
//  dotView
//
//  Created by vsquared.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemYellow
      
        // **** Dot View **** //
        let dotView = DotView( frame:CGRect( x:20, y:80, width: (UIScreen.main.bounds.size.width) - 40, height: UIScreen.main.bounds.size.height - 100 ) )
        view.addSubview (dotView)

        // **** Slider **** //
        let slider = UISlider( frame: CGRect( x:20, y:40, width:320, height:20))
        slider.minimumValue = 0
        slider.maximumValue = 240.0
        slider.setValue(75.0, animated:false)
        slider.addTarget(dotView, action: #selector(dotView.changeRadius(_:)), for:.valueChanged)
        view.addSubview (slider)

        // **** Color well **** //
        let well = UIColorWell( frame: CGRect( x:(UIScreen.main.bounds.size.width) - 80, y:35, width:60, height:30))
        well.selectedColor = UIColor.red
        well.addTarget(dotView, action:#selector(dotView.changeDotColor(_:)), for: .valueChanged)
        view.addSubview (well)
 
    }

}
let viewController = ViewController()

