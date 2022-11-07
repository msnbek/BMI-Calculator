//
//  Models.swift
//  BMI Project
//
//  Created by Mahmut Şenbek on 7.11.2022.
//

import Foundation


struct CalculatorBrain {
   
    var bmi : Float?
    
    mutating func calcuteBMI(height:Float, weight:Float) {
        
         bmi = (weight) / pow(height, 2)
    }
    
    func getBMIValue() -> Float{
        
        let  newBmi = Float(String(format: "%.2f", bmi!))!
        return newBmi
        
    }
    
    
    
   
   
}
