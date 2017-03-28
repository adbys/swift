//
//  Musica.swift
//  Musica
//
//  Created by Student on 3/17/17.
//  Copyright © 2017 AJ. All rights reserved.
//

import Foundation


class Musica {
    
    var nome: String
    var artista: String
    var album: String
    var imagem: String
    
    
    init(nome: String, artista: String, album: String, imagem: String) {
        
        self.artista = artista
        self.nome = nome
        self.album = album
        self.imagem = imagem
        
    }
    
}




class MusicaDAO {
    
    static var musicas = [Musica]()
    
    static func initializa() {
        
        self.musicas = [
            Musica(nome: "Bipolar", artista: "Wesley Safadao", album: "Em casa", imagem: "capa-wesley-safadao-em-casa"),
            Musica(nome: "To sensacional", artista: "Wesley Safadao", album: "Em casa", imagem: "capa-wesley-safadao-em-casa"),
            Musica(nome: "Ninguem eh de ferro", artista: "Wesley Safadao", album: "Em casa", imagem: "capa-wesley-safadao-em-casa"),
            Musica(nome: "Santeria", artista: "Sublime", album: "Em casa", imagem: "capa-wesley-safadao-em-casa"),
            Musica(nome: "Tim Tim", artista: "Wesley Safadao", album: "Em casa", imagem: "capa-wesley-safadao-em-casa"),
            Musica(nome: "Californication", artista: "Red Hot Chilli Peppers", album: "Em casa", imagem: "capa-wesley-safadao-em-casa"),
            Musica(nome: "Islands in the sun", artista: "Sublime", album: "Em casa", imagem: "capa-wesley-safadao-em-casa")
        ]
        
        
    }
    
    static func getMusicas() -> [Musica] {
        
        return self.musicas
            
        
    }
    
    static func adicionar(musica: Musica) {
        
        musicas.append(musica)
        
        print ("Musica \(musica.nome) adicionada!")
        
        
    }
    
    static func removerMusicaNa(posicao: Int) {
        
        let musicasRemovida = musicas.remove(at: posicao)
        
        print ("Musica \(musicasRemovida.nome) removida!")
        
    }
    
    
}
