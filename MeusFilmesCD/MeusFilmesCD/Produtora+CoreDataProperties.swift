//
//  Produtora+CoreDataProperties.swift
//  MeusFilmesCD
//
//  Created by Student on 3/23/17.
//  Copyright © 2017 AJ. All rights reserved.
//

import Foundation
import CoreData


extension Produtora {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Produtora> {
        return NSFetchRequest<Produtora>(entityName: "Produtora");
    }

    @NSManaged public var filmesProduzidos: NSSet?

}

// MARK: Generated accessors for filmesProduzidos
extension Produtora {

    @objc(addFilmesProduzidosObject:)
    @NSManaged public func addToFilmesProduzidos(_ value: Filme)

    @objc(removeFilmesProduzidosObject:)
    @NSManaged public func removeFromFilmesProduzidos(_ value: Filme)

    @objc(addFilmesProduzidos:)
    @NSManaged public func addToFilmesProduzidos(_ values: NSSet)

    @objc(removeFilmesProduzidos:)
    @NSManaged public func removeFromFilmesProduzidos(_ values: NSSet)

}
