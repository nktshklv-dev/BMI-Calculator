//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Nikita  on 8/21/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    var bmiValue: String?
    @IBOutlet var bmiValueLabel: UILabel!
    @IBOutlet var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiValueLabel.text = bmiValue
    }
    

  
    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
