//
//  ViewController.swift
//  MeusFilmesCD
//
//  Created by Student on 3/23/17.
//  Copyright © 2017 AJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func adicionarFilme(_ sender: Any) {
        
        //1. pegar as info do user
        
        let titulo = tituloTextField.text
        let diretor = diretorTextField.text
        
        //2. criar obj filme
        
        let novoFilme = Filme()
        novoFilme.titulo = titulo
        novoFilme.diretor = diretor
        novoFilme.ano = self.ano
        
        //3.adicionar o obj no BD
        
        if FilmeDAO.adicionar(novoFilme) {
            print("Filme \(novoFilme.titulo) adicionado com sucesso.")
        } else {
            print("Não foi possivel adicionar o filme \(novoFilme.titulo).")
        }
        
        
    }
    
    @IBOutlet weak var anoDeEstreiaTextField: UITextField!
    
    @IBOutlet weak var diretorTextField: UITextField!
    
    @IBOutlet weak var tituloTextField: UITextField!
    
    var ano: Int16 {
        
        if let text = anoDeEstreiaTextField.text {
            if let intValue = Int16(text) {
                return intValue
            }
        }
        
        return 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

