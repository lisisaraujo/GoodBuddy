//
//  Activity.swift
//  Projektwoche1
//
//  Created by Joanna Kühn on 16.09.24.
//

import Foundation
import SwiftData

@Model
class Activity: Identifiable, Hashable {
    let Id: String = UUID().uuidString
    var name: String
    var activityDescription: String
    var date: Date = Date()
    var type: ActivityType
    var duration: Double
    var isDone: Bool = false
    init(name: String, activityDescription: String, date: Date, type: ActivityType, duration: Double, isDone: Bool) {
        self.name = name
        self.activityDescription = activityDescription
        self.date = date
        self.type = type
        self.duration = duration
        self.isDone = isDone
    }
}
