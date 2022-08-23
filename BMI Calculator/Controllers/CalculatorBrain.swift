//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Nikita  on 8/22/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit


struct CalculatorBrain{
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = Double(weight / (height * height))
        switch bmiValue{
        case 0...18.5:
            print("Underweight")
            bmi = BMI(value: bmiValue, advice: "You should eat more pies!", color: .systemBlue)
        
        case 18.5...24.9:
            print("Normal")
            bmi = BMI(value: bmiValue, advice: "Keep eating healhty food!", color: .systemGreen)
        default:
            print("Overweight")
            bmi = BMI(value: bmiValue, advice: "You should eat fewer pies!", color: .systemRed)
        }
        
    }
    
    func getBMIValue() -> String{
        guard let bmi = bmi?.value else {
            return "0.0"
        }

        let bmiValue = String(round(bmi * 10) / 10.0)
        
        return bmiValue
    }
    
    func getAdvice() -> String{
        return bmi!.advice
    }
    
    func getColor() -> UIColor{
        return bmi!.color
    }
    
}
