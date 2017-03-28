//
//  ViewController.swift
//  IMCCalculator
//
//  Created by Student on 3/15/17.
//  Copyright © 2017 AJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var pesoTextField: UITextField!

    @IBOutlet weak var alturaTextField: UITextField!
    
    @IBOutlet weak var resultadoTextField: UILabel!
    
    @IBAction func calcula(_ sender: Any) {
        
        let altura = self.alturaTextField.text
        let peso = self.pesoTextField.text
        
        
        self.resultadoTextField.text = "\(altura) \(peso)"
        
        
    }
    
}

