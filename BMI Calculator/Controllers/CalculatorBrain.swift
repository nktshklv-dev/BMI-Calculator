//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Nikita  on 8/22/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation


struct CalculatorBrain{
    var bmi = 0.0
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = Double(weight / (height * height))
        print(bmi)
    }
    
    func getBMIValue() -> String{
        let bmiValue = String(round(bmi * 10) / 10.0)
        
        return bmiValue
    }
    
}
