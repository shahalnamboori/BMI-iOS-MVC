//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculatorVC: UIViewController {

    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onHeightSliderChanged(_ sender: UISlider) {
        
        print(sender.value);
        heightValueLabel.text = String(format: "%.2f", sender.value)
        
    }
    @IBAction func onWeightSliderChanged(_ sender: UISlider) {
        print(sender.value);
        weightValueLabel.text = String(format: "%.2f", sender.value)
    }
    @IBAction func onCalculateButtonPressed(_ sender: UIButton) {
        
        //let BMI = Float(weightSlider.value) / Float(heightSlider.value * heightSlider.value)
        //bmiResult = String(format: "%.2f", BMI)
        calculatorBrain.calculateBMI(weight: weightSlider.value, height: heightSlider.value)
        
        self.performSegue(withIdentifier: "goToResultsVC", sender: self) 
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResultsVC" {
            let destinationVC = segue.destination as! ResultsVC
            //destinationVC.bmiValue = bmiResult
            destinationVC.bmiValue = calculatorBrain.getBMI()
            destinationVC.adviceValue = calculatorBrain.getAdvice()
            destinationVC.colourValue = calculatorBrain.getColor()
        }
    }
}

