//
//  Pet.swift
//  Projektwoche1
//
//  Created by Jakub Zwierz on 16.09.24.
//

import Foundation
import SwiftData

@Model
class Pet: Identifiable {
    
    let id : String = UUID().uuidString
    var name : String
    
    init(name: String) {
        self.name = name
    }
}
