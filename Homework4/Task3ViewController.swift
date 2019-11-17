//
//  Task3ViewController.swift
//  Homework4
//
//  Created by Developer on 17.11.2019.
//  Copyright © 2019 Developer. All rights reserved.
//

import UIKit

class Task3ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func touchBtnCanceled(_ sender: Any) {
        button.backgroundColor = .random()
    }
    
    @IBAction func touchBtnFirst(_ sender: Any) {
        button.setTitleColor(.random(), for: .normal)
    }
    
}

extension UIColor {
    static func random() -> UIColor {
        return UIColor(red:   .random(),
                       green: .random(),
                       blue:  .random(),
                       alpha: 1.0)
    }
}

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}
