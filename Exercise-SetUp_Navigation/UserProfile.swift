//
//  UserProfile.swift
//  Exercise-SetUp_Navigation
//
//  Created by Juan Romero on 23/08/23.
//

import SwiftUI

struct UserProfile: View {
    //Hold user information from user defaults before body
    //Constant to hold first name, lastname, email and initialize it by accessing the --standard-- property of UserDefaults

    let fname = UserDefaults.standard.string(forKey: kFirstName)
    let lname = UserDefaults.standard.string(forKey: kLastname)
    let email = UserDefaults.standard.string(forKey: kEmail)
    
    //Enviroment - This will automatically reference the presentation enviroment in SwiftUI which will allow you to reach the navigation logic.
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack{
            Text("Personal Information")
                .font(.title)
                .bold()
                .foregroundColor(.mint)
            Image("Profile-image-placeholder")
            //Pass the 3 constraints defined
            Text( kFirstName)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.regular)
                .padding()
            Text(kLastname)
                .font(.title)
                .fontWeight(.regular)
                .padding()
            Text(kEmail)
                .font(.title)
                .fontWeight(.regular)
                .padding()
            
            //Logout
            Button("Logout"){
                //Access the standard property of the UserDefaults and set --false-- value using the login constant as a key
                UserDefaults.standard.set(false, forKey: kIsloggedIn)
                self.presentation.wrappedValue.dismiss() //When executed, it will tell the NavigationView to go back to the previous screen which is Onboarding Simulating logout
                
            }
                .padding(.all)
                .frame(width: 350, height: 50)
                .font(.title)
                .foregroundColor(.white)
                .background(Color.mint)
                .cornerRadius(10)
            
            //To make all items startfrom the top instead of the center of the screen, add a spacer element right after the logout button
            Spacer()
            
            
            
            
            
        }//VStack
           
            
        }
    }


struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}
