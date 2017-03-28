//
//  Filme+CoreDataProperties.swift
//  MeusFilmesCD
//
//  Created by Student on 3/23/17.
//  Copyright © 2017 AJ. All rights reserved.
//

import Foundation
import CoreData


extension Filme {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Filme> {
        return NSFetchRequest<Filme>(entityName: "Filme");
    }

    @NSManaged public var titulo: String?
    @NSManaged public var diretor: String?
    @NSManaged public var ano: Int16
    @NSManaged public var produtora: Produtora?

}
