//
//  Filme+CoreDataClass.swift
//  MeusFilmesCD
//
//  Created by Student on 3/23/17.
//  Copyright © 2017 AJ. All rights reserved.
//

import Foundation
import CoreData


public class Filme: NSManagedObject {
    
    convenience init() {
        
        let context = CoreDataManager.getContext()
        let entity = NSEntityDescription.entity(forEntityName: "Filme", in: context)
        
        self.init(entity: entity!, insertInto: context)
    }

}
