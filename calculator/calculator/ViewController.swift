//
//  ViewController.swift
//  calculator
//
//  Created by MAKAR4IK BOND on 4.02.21.
//

import UIKit

class ViewController: UIViewController {
    
    var numbersFromScreen: Double = 0
    var secondPartCalculating: Double = 0
    var resultat: Double = 0
    var action: Int = 0
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
    
        
        if Int(sender.tag) >= 0 && Int(sender.tag) <= 9 { resultLabel.text = resultLabel.text! + String(sender.tag)
            
            
        } else if sender.tag >= 10 && sender.tag <= 15 {
            if sender.tag == 10 {
                resultLabel.text = ""
                numbersFromScreen = 0
                resultat = 0
                action = 0
            } else if sender.tag == 12 { // сложение
                resultat += Double(resultLabel.text!)!
                resultLabel.text = ""
                action = 12
            } else if sender.tag == 13 { // вычитание
                resultat += Double(resultLabel.text!)!
                resultLabel.text = ""
                action = 13
            } else if sender.tag == 14 { // деление
                resultat += Double(resultLabel.text!)!
                resultLabel.text = ""
                action = 14
            } else if sender.tag == 15 { // умножение
                resultat += Double(resultLabel.text!)!
                resultLabel.text = ""
                action = 15
            } else if sender.tag == 11 { // равно
                if action == 12 {
                    resultat += Double(resultLabel.text!)!
                } else if action == 13 {
                    resultat -= Double(resultLabel.text!)!
                } else if action == 14 {
                    resultat /= Double(resultLabel.text!)!
                } else if action == 15 {
                    resultat *= Double(resultLabel.text!)!
                }
                if resultat.truncatingRemainder(dividingBy: 2) == 0 || resultat == 1 || resultat == -1 {
                    resultLabel.text = String(Int(resultat))
                } else { resultLabel.text = String(resultat) }
                numbersFromScreen = 0
                resultat = 0
                action = 0
            } 
            
        }
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }




}
