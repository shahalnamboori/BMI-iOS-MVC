//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Shahal Namboorimadathil Sidique on 04/10/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var BMI: bmi?
    
    mutating func calculateBMI(weight:Float, height:Float) {
        let result = weight/(height*height)
        var textInfo = " "
        var colourInfo:UIColor
        
        if(result < 18.5) {
            textInfo = "eat more pancakes"
            colourInfo = .blue
        }
        else if(result > 18.5 && result < 24.9)
        {
            textInfo = "you are perfect"
            colourInfo = .green
        }
        else
        {
            textInfo = "eat less pancakes"
            colourInfo = .red
        }
        BMI = bmi(value: result, advice: textInfo, colour: colourInfo)
    }
    
    
    
    func getBMI() -> String {
        let bmiValue = String(format: "%.2f", BMI?.value ?? 0.0)
        return bmiValue
    }
    
    func getAdvice() -> String {
        return BMI?.advice ?? " "
    }
    
    func getColor() -> UIColor {
        return BMI?.colour ?? .blue
    }
}
