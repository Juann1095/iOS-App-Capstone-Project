//
//  UserProfile.swift
//  Exercise-SetUp_Navigation
//
//  Created by Juan Romero on 23/08/23.
//

import SwiftUI

struct UserProfile: View {
    let firstName = UserDefaults.standard.string(forKey: kFirstName)
    let lastName = UserDefaults.standard.string(forKey: kLastName)
    let email = UserDefaults.standard.string(forKey: kEmail)
    @Environment(\.presentationMode) var presentation
    var body: some View {
        VStack{
            Text("Personal information")
            Image("Profile-image-placeholder")
            
            Text(firstName ?? "")
            Text(lastName ?? "")
            Text(email ?? "")
            
            Button("Logout", action: {
                UserDefaults.standard.set(false, forKey: kIsLoggedIn)
                self.presentation.wrappedValue.dismiss()
            })
            Spacer()
           
        }
        
    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}
