//
//  HomeTabView.swift
//  Projektwoche1
//
//  Created by Jakub Zwierz on 16.09.24.
//

import SwiftUI
import SwiftData

struct HomeTabView: View {
    
//    The information about a single pet is being past from the Home View.
    
    @State var selectedPet : Pet
    
    var body: some View {
        
        NavigationStack{
            
//            The user should be able to navigate to 3 different major subviews : Pet, Activities and Health
            
            TabView{
                PetView(pet: selectedPet)
                    .tabItem {
                        Label("Pet", systemImage: "dog.circle")
                    }
                
//                TODO: Replace it with ActivitiesView
                
                PetView(pet: selectedPet)
                    .tabItem {
                        Label("Acitvities", systemImage: "flag.2.crossed.circle")
                    }
                
 //                TODO: Replace it with HealthView
                
                PetView(pet: selectedPet)
                    .tabItem {
                        Label("Health", systemImage: "cross.circle")
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
    
    return HomeTabView(selectedPet: Pet(name: "Woofy"))
        .modelContainer(container)
}
