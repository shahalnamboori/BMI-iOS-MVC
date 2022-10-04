//
//  ResultsVC.swift
//  BMI Calculator
//
//  Created by Shahal Namboorimadathil Sidique on 04/10/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultsVC: UIViewController {

    @IBOutlet weak var bmiValueLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var backgroundView: UIView!
    
    var bmiValue:String?
    var adviceValue:String?
    var colourValue:UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiValueLabel.text = bmiValue
        adviceLabel.text = adviceValue
        backgroundView.backgroundColor = colourValue
    }
    
    @IBAction func onRecalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
