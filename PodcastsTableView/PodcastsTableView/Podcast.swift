//
//  Podcasts.swift
//  PodcastsTableView
//
//  Created by Student on 3/16/17.
//  Copyright © 2017 AJ. All rights reserved.
//

import Foundation


class Podcast {
    
    let nome: String
    let imagem: String
    let descricao: String
    
    
    init (nome: String, imagem: String, descricao: String) {
        
        self.nome = nome
        self.imagem = imagem
        self.descricao = descricao
        
    }



}


class PodcastDAO {
    
    static func getPodcasts () -> [Podcast] {
                
        return [
            Podcast(nome: "99Vidas",imagem: "99vidas",descricao: "No unplayed episodes"),
            Podcast(nome: "Canal42.tv",imagem: "canal42",descricao: "No unplayed episodes"),
            Podcast(nome: "MacMagazine no Ar",imagem: "mm",descricao: "No unplayed episodes"),
            Podcast(nome: "Não Ouvo",imagem: "naoouvo",descricao: "No unplayed episodes"),
            Podcast(nome: "NerdCast",imagem: "nerdcast",descricao: "No unplayed episodes"),
            Podcast(nome: "O Melhor Podcast do Brasil",imagem: "ompdb",descricao: "No unplayed episodes"),
            Podcast(nome: "Rapadura Cast",imagem: "rapaduracast",descricao: "No unplayed episodes"),
            Podcast(nome: "#Reloading",imagem: "reloading",descricao: "No unplayed episodes"),
            Podcast(nome: "Scicast",imagem: "scicast",descricao: "No unplayed episodes")
        
        ]
    }
    
}
