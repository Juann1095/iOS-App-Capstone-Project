//
//  Dish+CoreDataProperties.swift
//  Onboarding-Flow-Main
//
//  Created by Juan Romero on 01/09/23.
//
//

import Foundation
import CoreData


extension Dish {

    @nonobjc public class
    func fetchRequest() -> NSFetchRequest<Dish> {
        //Improve Function
        let request: NSFetchRequest<NSFetchRequestResult> =
        NSFetchRequest(entityName: String (describing: Self.self))
        //Remove duplicates from the results
        request.returnsDistinctResults = true
        request.returnsObjectsAsFaults = true
        return NSFetchRequest<Dish>(entityName: "Dish")
    }

    @NSManaged public var category: String?
    @NSManaged public var descriptionn: String?
    @NSManaged public var image: String?
    @NSManaged public var price: String?
    @NSManaged public var title: String?

}

extension Dish : Identifiable {

}
