//
//  ViewController.swift
//  Projeto
//
//  Created by Student on 3/27/17.
//  Copyright © 2017 AJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    
    @IBOutlet weak var hourLabel: UILabel!
    
    @IBOutlet weak var minuteLabel: UILabel!
    
    @IBOutlet weak var secondLabel: UILabel!
    
    
    
    @IBAction func clear(_ sender: Any) {
        timer.invalidate()
        counterSeconds = 0
        counterMinutes = 0
        counterHours = 0
        
        secondLabel.text = String(format: "%02d", counterSeconds)
        minuteLabel.text = String(format: "%02d", counterMinutes)
        hourLabel.text = String(format: "%02d", counterHours)
        
    }
    @IBAction func pause(_ sender: Any) {
        timer.invalidate()
    }
    
    
    @IBAction func play(_ sender: Any) {
        
        if(!timer.isValid) {
            
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
            
        }
        
    }
    

    var timer = Timer()
    
    var counterSeconds = 0
    var counterMinutes = 0
    var counterHours = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        secondLabel.text = String(format: "%02d", counterSeconds)
        minuteLabel.text = String(format: "%02d", counterMinutes)
        hourLabel.text = String(format: "%02d", counterHours)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateCounter() {
        counterSeconds += 1
        if (counterSeconds == 60) {
            counterSeconds = 0
            counterMinutes += 1
            if(counterMinutes == 60) {
                counterMinutes = 0
                counterHours += 1
            }
            
        }
        
        secondLabel.text = String(format: "%02d", counterSeconds)
        minuteLabel.text = String(format: "%02d", counterMinutes)
        hourLabel.text = String(format: "%02d", counterHours)
        
        let alert = UIAlertController(title: "10 segundos",
                                      message:"10 Segundos!",
                                      preferredStyle: .alert
        )
        
        let action: UIAlertAction = UIAlertAction(title: "OK", style: .default) { (action) in
            // Aqui insira o código a ser executado caso o usuário execute a ação
            print("O usuário escolheu: \(action.title)")
        }
        
        alert.addAction(action)
        
        if (counterSeconds == 10) {
            self.present(alert, animated: true, completion: {
                print("Alerta completo!")
            })
        }
        

        
        
    }


}

