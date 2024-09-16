//
//  PetSelectorElement.swift
//  Projektwoche1
//
//  Created by Jakub Zwierz on 16.09.24.
//

import SwiftUI
import SwiftData

struct PetSelectorElement: View {
    
//    Pet selector is a single UI element, that general information about pet.
//    It is used for Home View, for the pet selection.
    
    let pet : Pet
    
    var body: some View {
        VStack{
            
            HStack{
                
                Text(pet.name)
                
                Spacer()
                    .frame(width: 24)
                
                Rectangle()
                    .frame(width: 120,height: 120)
                    .cornerRadius(5.0)
            }
            
        }
        .frame(width: 300, height: 200)
        .background(
            Rectangle()
                .fill(.clear)
                .border(Color.black)
                .cornerRadius(10.0)
                .shadow(radius: 2)
        )

    }
}

#Preview {
    let configuration = ModelConfiguration(isStoredInMemoryOnly: true)
    let container = try! ModelContainer(for: Pet.self, configurations: configuration)
    
    //   Preview data
    container.mainContext.insert(Pet(name: "Woofy"))
    
    return PetSelectorElement(pet: Pet(name: "Woofy"))
        .modelContainer(container)
}
