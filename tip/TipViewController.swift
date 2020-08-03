//
//  ViewController.swift
//  tip
//
//  Created by Steven Liu on 8/2/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipAmountSegmentControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get the bill amount
        let bill = Double (billAmountTextField.text!) ?? 0
        let defaults = UserDefaults.standard
        let tipPercentages = [0.15, 0.18, 0.2]
        
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
        let op1 = defaults.double(forKey: "op1") ?? 15
        let op2 = defaults.double(forKey: "op2") ?? 18
        let op3 = defaults.double(forKey: "op3") ?? 20
//        tipAmountSegmentControl.setTitle(op1.string += "%", forSegmentAtIndex: 0)
//        tipAmountSegmentControl.setTitle(op2.string += "%", forSegmentAtIndex: 1)
//        tipAmountSegmentControl.setTitle(op3.string += "%", forSegmentAtIndex: 2)
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

