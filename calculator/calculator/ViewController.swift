//
//  ViewController.swift
//  calculator
//
//  Created by Talut mahamud Deep on 1/6/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var first: UITextField!
    
    @IBOutlet weak var second: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    let a = "Wrong input"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func plus(_ sender: Any){
        if let firstNumber = Int(first.text!) {
            if let secondNumber = Int(second.text!){
                let Result = firstNumber + secondNumber
                result.text = String(Result)
            }else{
                result.text = a
            }
        }
    }
    
    @IBAction func minus(_ sender: Any) {
        if let firstNumber = Int(first.text!) {
            if let secondNumber = Int(second.text!){
                let Result = firstNumber - secondNumber
                result.text = String(Result)
            }else{
                result.text = a
            }
        }
    }
    
    @IBAction func mul(_ sender: Any) {
        if let firstNumber = Int(first.text!) {
            if let secondNumber = Int(second.text!){
                let Result = firstNumber * secondNumber
                result.text = String(Result)
            }else{
                result.text = a
            }
        }
    }
    
    @IBAction func dif(_ sender: Any) {
        if let firstNumber = Int(first.text!) {
            if let secondNumber = Int(second.text!){
                let Result = firstNumber / secondNumber
                result.text = String(Result)
            }else{
                result.text = a
            }
        }
    }
}

