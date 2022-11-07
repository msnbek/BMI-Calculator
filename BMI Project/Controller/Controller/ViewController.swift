//
//  ViewController.swift
//  BMI Project
//
//  Created by Mahmut Şenbek on 5.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightOutlet: UISlider!
    @IBOutlet weak var weightOutlet: UISlider!
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

  
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let height = heightOutlet.value
        let weight = weightOutlet.value
        calculatorBrain.calcuteBMI(height: height, weight: weight)
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }
    
    @IBAction func heightSlider(_ sender: UISlider) {
        
        let currentValue = Double(sender.value)
        //let lessDigitValue = (currentValue * 1000.0) / 1000.0
        //let lessDigitValue = Double(currentValue).rounded(toPlaces: 4)
        
        // Virgülden sonra 2 rakamı göstermek icin kullanıldı.
        let heigt = "\(String(format: "%.2f", currentValue))m"
        heightLabel.text = heigt
        print(sender.value)
        
        
    }
    
    
    @IBAction func weightSlider(_ sender: UISlider) {
        
        let currentWeightValue = Double(sender.value)
        let weight = " \(String(format: "%.1f", currentWeightValue))kg"
        weightLabel.text = weight
        print(sender.value)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.comingBmi = calculatorBrain.getBMIValue()
            
        }
    }
}

