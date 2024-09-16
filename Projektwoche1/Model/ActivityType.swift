//
//  ActivityType.swift
//  Projektwoche1
//
//  Created by Joanna Kühn on 16.09.24.
//

import Foundation
enum ActivityType: String, CaseIterable, Identifiable {
    case walks, sleep, playtime, training
    var id: String { self.rawValue }
}







