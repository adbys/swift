//
//  Lugar.swift
//  ListaDeLugares
//
//  Created by Student on 3/16/17.
//  Copyright © 2017 AJ. All rights reserved.
//

import Foundation

class Lugar {
    
    let nome: String
    let foto: String
    
    
    init(nome: String, foto: String) {
        self.nome = nome
        self.foto = foto
        
    }
    
}


class LugarDAO {
    
    static func getLugares() -> [Lugar] {
        
        return [
            Lugar(nome: "Igreja do Caracol", foto: "igreja"),
            Lugar(nome: "Cachoeira do Caracol", foto: "cachoeira"),
            Lugar(nome: "Corredeira do Caracol", foto: "corredeira"),
            Lugar(nome: "Portal do Caracol", foto: "portal"),
            Lugar(nome: "Jardim do Caracol", foto: "jardim")
        ]
        
    }
    
}
