//
//  Log+CoreDataProperties.swift
//  Switch Time Tracker
//
//  Created by Alexandru Rosianu on 11/04/2018.
//
//

import Foundation
import CoreData

extension Log {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Log> {
        return NSFetchRequest<Log>(entityName: "Log")
    }

    @NSManaged public var end: TimeInterval
    @NSManaged public var start: TimeInterval
    @NSManaged public var activity: Activity

}
