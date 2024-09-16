//
//  HomeView.swift
//  Projektwoche1
//
//  Created by Jakub Zwierz on 16.09.24.
//

import SwiftUI
import SwiftData

struct HomeView: View {
    
//    In the home screen all pets will be listed and data should be loaded from the database
    
    @Environment(\.modelContext) var context
    
//    We are loading the pet data via query.
    
    @Query var listOfPets : [Pet]
    
    var body: some View {
        
        NavigationStack{
            
//            After selecting a singe entry the user will navigate to the pet page, which is split into 3                  categories, or subviews. Those subviews will be accessible through the Tab view, therefore we are            navigating to the HomeTabView , which is basially a tab view host.
            
            List(listOfPets) { pet in
                NavigationLink(destination: HomeTabView(selectedPet: pet)) {
                    PetSelectorElement(pet: pet)
                }
            }
        }
    }
}

#Preview {
    let configuration = ModelConfiguration(isStoredInMemoryOnly: true)
    let container = try! ModelContainer(for: Pet.self, configurations: configuration)
    
    //   Preview data
    container.mainContext.insert(Pet(name: "Woofy"))
    container.mainContext.insert(Pet(name: "Peppy"))
    container.mainContext.insert(Pet(name: "Tiny"))
    
    return HomeView()
        .modelContainer(container)
}
