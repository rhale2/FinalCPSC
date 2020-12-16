//
//  Settings+CoreDataProperties.swift
//  FinalProject
//
//  Created by Sophia Braun on 12/15/20.
//
//

import Foundation
import CoreData


extension Settings {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Settings> {
        return NSFetchRequest<Settings>(entityName: "Settings")
    }

    @NSManaged public var name: String?
    @NSManaged public var age: Date?
    @NSManaged public var height: Double
    @NSManaged public var weight: Double

}
