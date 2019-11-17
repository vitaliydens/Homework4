//
//  HomeworkViewController.swift
//  Homework4
//
//  Created by Developer on 14.11.2019.
//  Copyright © 2019 Developer. All rights reserved.
//

import UIKit

class HomeworkViewController: UIViewController {

    @IBOutlet weak var lblForChangingValue: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var lblForSlider: UILabel!
    @IBOutlet weak var lblForTextField: UILabel!
    @IBOutlet weak var lblForSegmentControl: UILabel!
    @IBOutlet weak var lblForStteper: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var tfChangingValue: UITextField!
    
    var stepperValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfChangingValue.delegate = self
    }

    @IBAction func btnChageValueClicked(_ sender: Any) {
        lblForChangingValue.text = "test "
    }
    
    @IBAction func segmentClicked(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            lblForSegmentControl.text = "1"
        case 1:
            lblForSegmentControl.text = "2"
        default:
            break
        }
    }
    @IBAction func changedText(_ sender: UITextField) {
        lblForTextField.text = sender.text
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        lblForSlider.text = "\(sender.value)"
    }
    
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        if sender.isOn {
            view.backgroundColor = .white
        } else {
            view.backgroundColor = .red
        }
    }
    
    @IBAction func btnRunSpinner(_ sender: Any) {
        activityIndicator.startAnimating()
    }
    
    @IBAction func steeperChangeValue(_ sender: UIStepper) {
        stepperValue += 1
        lblForStteper.text = "\(sender.value)"
    }
    
    @IBAction func btnShowImageClicked(_ sender: Any) {
        imgView.image = #imageLiteral(resourceName: "img")
    }
}

extension HomeworkViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
}
