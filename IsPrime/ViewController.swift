//
//  ViewController.swift
//  IsPrime
//
//  Created by Benedito Macedo on 12/05/19.
//  Copyright © 2019 bamacedo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var inputNumber: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBAction func checkNumber(_ sender: Any) {
        if let number = inputNumber.text {
            var isPrime = true
            
            if Int(number) != 1 && Int(number) != 2{
                if let numberInt = Int(number) {
                    
                    let limit = Int(sqrt(Double(numberInt)) + 1)
                    
                    for i in 2 ... Int(limit) {
                        if numberInt % i == 0 {
                            isPrime = false
                            break
                        }
                    }
                }
            }
            
            if isPrime {
                result.text = "O número é primo"
            } else {
                result.text = "O número não é primo"
            }
            
            inputNumber.text = ""
        }
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.inputNumber.placeholder = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.inputNumber.delegate = self
    }


}

