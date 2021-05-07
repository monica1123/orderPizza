//
//  ViewController.swift
//  orderPizza
//
//  Created by Monica Lo on 2021/5/5.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mobileTextField: UITextField!
    
    @IBOutlet weak var flavorSegmentedControl: UISegmentedControl!
    @IBOutlet weak var sizeSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var spicinessSlider: UISlider!
    @IBOutlet weak var spicinessLabel: UILabel!
    
    @IBOutlet weak var qtyStepper: UIStepper!
    @IBOutlet weak var qtyLabel: UILabel!
    
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var resultImageView: UIImageView!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        button.layer.cornerRadius = 13
        button.clipsToBounds = true
    }

    @IBAction func chooseSpiciness(_ sender: UISlider) {
       let spicinessLevel = Int(sender.value)
       if spicinessLevel == 0 {
            spicinessLabel.text = "不辣"
       } else if spicinessLevel == 1 {
            spicinessLabel.text = "小辣"
       } else if spicinessLevel == 2 {
            spicinessLabel.text = "中辣"
       } else {
            spicinessLabel.text = "大辣"
       }
    }
    
    @IBAction func chooseQty(_ sender: UIStepper) {
        qtyLabel.text = "\(Int(sender.value))"
    }
    

    @IBAction func sendButton(_ sender: UIButton) {
        if nameTextField.text == "" || mobileTextField.text == "" {
           resultImageView.image = UIImage(named:"fill out the form")
        } else if flavorSegmentedControl.selectedSegmentIndex == 0 {
           resultImageView.image = UIImage(named: "sold out")
        } else if qtyLabel.text == "0" {
            resultImageView.image = UIImage(named: "0 Qty")
        } else {
            resultImageView.image = UIImage(named: "order completed")
        }
    }
 
}
