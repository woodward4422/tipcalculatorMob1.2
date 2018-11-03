//
//  ViewController.swift
//  TipCalculatorStarter
//
//  Created by Chase Wang on 9/19/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - View Lifecycle
    @IBOutlet weak var billInputView: UIView!
    @IBOutlet weak var billAmountTextLabel: UILabel!
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var tipPercentLabel: UILabel!
    @IBOutlet weak var tipOutputView: UIView!
    @IBOutlet weak var tipPercentSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        billInputView.layer.cornerRadius = 8
        billInputView.layer.masksToBounds = true
        tipOutputView.layer.borderWidth = 1
        
    }
    
}

