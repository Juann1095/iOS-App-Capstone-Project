//
//  ContentView.swift
//  Exercise-SetUp_Navigation
//
//  Created by Juan Romero on 22/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Little Lemon")
                .font(.title)
            Text("Chicago")
                .font(.callout)
            Text("Little Lemon is a family owned Mediterranean restaurant, focused on traditional recipes served with a modern twist" )
                .font(.headline)
        
            List {
                Text("")
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
