//
//  ViewController.swift
//  TipCalculatorStarter
//
//  Created by Chase Wang on 9/19/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inputBillView: MyCustomView!
    
    @IBOutlet weak var outputTipView: MyCustomView!
    
    @IBOutlet weak var billAmountLabel: UILabel!
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    
    @IBOutlet weak var inputBillTextField: UITextField!
    
    @IBOutlet weak var tipPercentageSegmentedController: UISegmentedControl!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    @IBOutlet weak var tipAmountOutputLabel: UILabel!
    
    
    @IBOutlet weak var totalAmountOutputLabel: UILabel!
    
    @IBOutlet weak var restButton: UIButton!
    
    var tipPercentage = 0.15
    
    // MARK: - View Lifecycle

    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputBillView.layer.cornerRadius = 8
        inputBillView.layer.masksToBounds = false
        outputTipView.layer.cornerRadius = 8
        outputTipView.layer.masksToBounds = false
        restButton.layer.cornerRadius = 8
        restButton.layer.masksToBounds = false
        inputBillTextField.keyboardType = .decimalPad
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
        
        
        
        
    }
    
    @IBAction func calculateButtonPressed(_ sender: Any) {
        guard let billAmount = inputBillTextField.text else {return}
        
        switch tipPercentageSegmentedController.selectedSegmentIndex {
        case 0 :
            tipPercentage = 0.15
        case 1 :
            tipPercentage = 0.18
        case 2 :
            tipPercentage = 0.20
        default:
            tipPercentage = 0.00
        }
        
        let totalTip = Double(billAmount)! * tipPercentage
        let totalBill = totalTip + Double(billAmount)!
        
        tipAmountOutputLabel.text = "$" + String(totalTip)
        totalAmountOutputLabel.text = "$" + String(totalBill)
        
        
    }
    
}


