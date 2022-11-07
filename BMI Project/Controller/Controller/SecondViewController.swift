//
//  SecondViewController.swift
//  BMI Project
//
//  Created by Mahmut Şenbek on 7.11.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    var comingBmi : Float = 0.0
    

    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = "\(String(format: "%.2f", comingBmi))"
        print(comingBmi)
        whatWillShow()
    }
    

    func whatWillShow() {
        
        switch comingBmi {
        case 0...18.4:
            commentLabel.text = "You are so skinny, go to doctor!"
            self.view.backgroundColor = UIColor.blue
        case 18.41...24.9:
            commentLabel.text = "You are in the good shape, healthy."
            self.view.backgroundColor = UIColor.green
        case 24.91...29.9:
            commentLabel.text = "You are  fat! Go to doctor for your health."
            self.view.backgroundColor = UIColor.brown
        case 29.91...34.9:
            commentLabel.text = "You are so fat, please go to doctor. Careful with your heart."
            self.view.backgroundColor = UIColor.red
        case 34.91...44.9:
            commentLabel.text = "SO FAT! SO FAT!"
            self.view.backgroundColor = UIColor.black
      
    
        default:
            commentLabel.text = "Get some help!"
        }
 
    }
    

    @IBAction func recalculate(_ sender: UIButton) {
        
        
        performSegue(withIdentifier: "toMainScreen", sender: nil)
    }
    
    
    
}
