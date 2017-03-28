//
//  FilmeDAO.swift
//  MeusFilmesCD
//
//  Created by Student on 3/23/17.
//  Copyright © 2017 AJ. All rights reserved.
//

import Foundation
import CoreData

class FilmeDAO {
    
    static func adicionar(_ filme: Filme) -> Bool {
        
        return CoreDataManager.inserir(filme)
        
        
    }
    
    static func remover(_ filme: Filme) -> Bool {
        
        return CoreDataManager.delete(filme)
        
        
    }
    
    static func buscarTodos() -> [Filme] {
        var resultados = [Filme]()
        
        let request: NSFetchRequest<Filme> = Filme.fetchRequest()
        
        request.sortDescriptors = [
        
            NSSortDescriptor(key: "titulo", ascending: true)
            
        ]
        
        do {
           try resultados = CoreDataManager.getContext().fetch(request)
            
        } catch let error {
            print ("Não foi possível realizar a busca por Filmes: \(error)")
        }
        
        return resultados
    }
    

    
    
    
}
