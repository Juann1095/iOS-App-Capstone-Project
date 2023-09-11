//
//  RestaurantApp.swift
//  Onboarding-Flow-Main
//
//  Created by Juan Romero on 11/09/23.
//

import SwiftUI

@main
struct RestaurantApp: App {
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup{
            Onboarding()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
    
}
