//
//  Activity+CoreDataProperties.swift
//  Switch Time Tracker
//
//  Created by Alexandru Rosianu on 11/04/2018.
//
//

import Foundation
import CoreData

extension Activity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Activity> {
        return NSFetchRequest<Activity>(entityName: "Activity")
    }

    @NSManaged public var name: String
    @NSManaged public var logs: Set<Log>

}

// MARK: Generated accessors for logs
extension Activity {

    @objc(addLogsObject:)
    @NSManaged public func addToLogs(_ value: Log)

    @objc(removeLogsObject:)
    @NSManaged public func removeFromLogs(_ value: Log)

    @objc(addLogs:)
    @NSManaged public func addToLogs(_ values: Set<Log>)

    @objc(removeLogs:)
    @NSManaged public func removeFromLogs(_ values: Set<Log>)

}
