//
//  Task2ViewController.swift
//  Homework4
//
//  Created by Developer on 16.11.2019.
//  Copyright © 2019 Developer. All rights reserved.
//

import UIKit

class Task2ViewController: UIViewController {
    
    lazy var mySlider = UISlider(frame: CGRect(x: 10, y: 100, width: 300, height: 20))
    lazy var viewForHide = UIView(frame: CGRect(x: 20, y: 300, width: 300, height: 300))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mySlider.maximumValue = 0
        mySlider.minimumValue = -1
        mySlider.isContinuous = true
        mySlider.tintColor = UIColor.green
        mySlider.addTarget(self, action: #selector(sliderValueDidChange(_:)), for: .valueChanged)
        mySlider.value = -1
        view.addSubview(mySlider)
        viewForHide.backgroundColor = .black
        view.addSubview(viewForHide)
        
    }
    
    @objc func sliderValueDidChange(_ sender: UISlider) {
        viewForHide.layer.cornerRadius = CGFloat((sender.value + 1) * 20)
        viewForHide.alpha = CGFloat(-sender.value)
    }

}
