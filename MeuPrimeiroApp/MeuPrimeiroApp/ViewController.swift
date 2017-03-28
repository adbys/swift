//
//  ViewController.swift
//  MeuPrimeiroApp
//
//  Created by Student on 3/15/17.
//  Copyright © 2017 AJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstNameTextField: UITextField!

    @IBOutlet weak var middleNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var fullNameLabel: UILabel!

    @IBAction func sayMyName() {
        
        //1 - pegar o texto
        
        let firstName = self.firstNameTextField.text
        let middleName = self.middleNameTextField.text
        let lastName = self.lastNameTextField.text
        
        //2 - colocar na label
        
        self.fullNameLabel.text = "\(firstName!) \(middleName!) \(lastName!)"
        
        //3 - apagar o texto que o usuario digitou
        
        self.firstNameTextField.text = ""
        self.middleNameTextField.text = ""
        self.lastNameTextField.text = ""
        
        
    }


}

