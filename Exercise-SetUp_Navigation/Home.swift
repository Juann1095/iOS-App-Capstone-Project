//
//  Home.swift
//  
//
//  Created by Juan Romero on 22/08/23.
//

import SwiftUI

struct Home: View {
    //Declare a new persistance constant
    let persistence = PersistenceController()
    
    //Declare Enviroment managedObjectContext
    @Environment(\.managedObjectContext) private var viewContext
    
    var body: some View {
     
        
        TabView {
          
            Text("")
          
            Menu()
                //Call Persistance Enviroment method
                .environment(\.managedObjectContext, persistence.container.viewContext)
                .badge(1)
                .tabItem{
                    Label("Menu", systemImage: "list.dash")
                }
            UserProfile()
                .badge(1)
                .tabItem{
                    Label("Profile", systemImage: "square.and.pencil")
                }
            
                .navigationBarBackButtonHidden(true)
        }
        
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
