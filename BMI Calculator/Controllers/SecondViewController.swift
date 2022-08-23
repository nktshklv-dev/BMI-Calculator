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
    var adviceText: String?
    var color: UIColor?
    @IBOutlet var bmiValueLabel: UILabel!
    @IBOutlet var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color
        adviceLabel.text = adviceText
        bmiValueLabel.text = bmiValue
    }
    

  
    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
