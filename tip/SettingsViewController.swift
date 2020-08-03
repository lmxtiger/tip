//
//  SettingsViewController.swift
//  tip
//
//  Created by Steven Liu on 8/2/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var option1_perc: UITextField!
    @IBOutlet weak var option2_perc: UITextField!
    @IBOutlet weak var option3_perc: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func option1_input(_ sender: Any) {
        let op1 = Double (option1_perc.text!) ?? 15
        let defaults = UserDefaults.standard
        defaults.set(op1, forKey: "op1")
        defaults.synchronize()
    }
    
    @IBAction func option2_input(_ sender: Any) {
        let op2 = Double (option2_perc.text!) ?? 18
        let defaults = UserDefaults.standard
        defaults.set(op2, forKey: "op2")
        defaults.synchronize()
    }
    
    @IBAction func option3_input(_ sender: Any) {
        let op3 = Double (option3_perc.text!) ?? 20
        let defaults = UserDefaults.standard
        defaults.set(op3, forKey: "op3")
        defaults.synchronize()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func onTap(_ sender: Any) {
//        print("hello")
        view.endEditing(true)
    }
    
}
