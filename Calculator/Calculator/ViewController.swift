//
//  ViewController.swift
//  Calculator
//
//  Created by Yiğit Doğan on 11.12.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var num1: UITextField!
    
    @IBOutlet weak var num2: UITextField!
    
    @IBOutlet weak var result: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sumClicked(_ sender: Any) {
        if let firstNum = Int(num1.text!){
            if let secondNum = Int(num2.text!){
                result.text = String(firstNum + secondNum)
            } else {
                result.text = "Invalid number!"
            }
        } else {
            result.text = "Invalid number!"
        }
    }
    
    @IBAction func minusClicked(_ sender: Any) {
        if let firstNum = Int(num1.text!){
            if let secondNum = Int(num2.text!){
                result.text = String(firstNum - secondNum)
            } else {
                result.text = "Invalid number!"
            }
        } else {
            result.text = "Invalid number!"
        }
    }
    
    @IBAction func multiplyClicked(_ sender: Any) {
        if let firstNum = Int(num1.text!){
            if let secondNum = Int(num2.text!){
                result.text = String(firstNum * secondNum)
            } else {
                result.text = "Invalid number!"
            }
        } else {
            result.text = "Invalid number!"
        }
    }
    
    @IBAction func divideClicked(_ sender: Any) {
        if let firstNum = Int(num1.text!){
            if let secondNum = Int(num2.text!){
                result.text = String(firstNum / secondNum)
            } else {
                result.text = "Invalid number!"
            }
        } else {
            result.text = "Invalid number!"
        }
    }
}

