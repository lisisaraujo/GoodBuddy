//
//  PetView.swift
//  Projektwoche1
//
//  Created by Jakub Zwierz on 16.09.24.
//

import SwiftUI
import SwiftData

struct PetView: View {
    
//    Pet view screen displays all the general information about the pet.
    
    @State var pet : Pet
    
    var body: some View {
    
        VStack{
            Text("This is a pet view screen")
            HStack{
                Text("Pet's name:")
                Text(pet.name)
            }
        }
    }
}

#Preview {
    let configuration = ModelConfiguration(isStoredInMemoryOnly: true)
    let container = try! ModelContainer(for: Pet.self, configurations: configuration)
    
    //   Preview data
    container.mainContext.insert(Pet(name: "Woofy"))
    
    return PetView(pet: Pet(name: "Woofy"))
        .modelContainer(container)
}
