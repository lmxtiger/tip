//
//  ViewController.swift
//  tip
//
//  Created by Steven Liu on 8/2/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    var op1: Double = 0
//    var op2: Double = 0
//    var op3: Double = 0

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipAmountSegmentControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let defaults = UserDefaults.standard
        if defaults.double(forKey: "op1") == 0.0 {
            defaults.set(15, forKey: "op1")
        }
        if defaults.double(forKey: "op2") == 0.0 {
            defaults.set(18, forKey: "op2")
        }
        if defaults.double(forKey: "op3") == 0.0 {
            defaults.set(20, forKey: "op3")
        }
        // Set cursor focus to the bill amount text field
        billAmountTextField.becomeFirstResponder()
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get the bill amount
        let bill = Double (billAmountTextField.text!) ?? 0
        let defaults = UserDefaults.standard
        let tipPercentages = [defaults.double(forKey: "op1")/100,
                              defaults.double(forKey: "op2")/100,
                              defaults.double(forKey: "op3")/100]
        
        // Calculate the tip and total
        let tip = bill * tipPercentages[tipAmountSegmentControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
        let defaults = UserDefaults.standard
        let op1 = defaults.double(forKey: "op1")
        let op2 = defaults.double(forKey: "op2")
        let op3 = defaults.double(forKey: "op3")
        tipAmountSegmentControl.setTitle(op1.description + "%", forSegmentAt: 0)
        tipAmountSegmentControl.setTitle(op2.description + "%", forSegmentAt: 1)
        tipAmountSegmentControl.setTitle(op3.description + "%", forSegmentAt: 2)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did disappear")
    }
    
}

