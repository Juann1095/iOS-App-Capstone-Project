//  Onboarding.swift
//  Created by Juan Romero on 21/08/23.

//VAR KEYS
let kFirstName = "First Name key"
let kLastname = "Last Name key"
let kEmail = "Email key"

//Constant to store the login status
let kIsloggedIn = "kIsLoggedIn"


import Foundation
import SwiftUI

struct Onboarding: View {
    @State private var fname = ""
    @State private var lname = ""
    @State private var email = ""
    @State private var isLoggedIn = false
    
    
    var body: some View {
       
        //NavigationView
        NavigationView{
            VStack{
                //NavigationLink
                NavigationLink(destination: Home(), isActive: $isLoggedIn){
                    //Return a new instance of EmptyView
                    EmptyView()
                }
                
                TextField("First Name", text:$fname)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.black)
                
                
                TextField("Type your Last Name", text:$lname)
                    .padding(.all)
                
                TextField("Type your Email", text:$email)
                    .padding(.all)
                
                Button("Register"){
                    if (fname.isEmpty && lname.isEmpty && email.isEmpty == false){
                        UserDefaults.standard.set(fname, forKey: kFirstName)
                        UserDefaults.standard.set(lname, forKey: lname)
                        UserDefaults.standard.set(email, forKey: kEmail)
                        isLoggedIn = true
                        
                        //UserDefaults - Set to true isloggedin
                        UserDefaults.standard.set(true, forKey: kIsloggedIn )
                        
                    }
                    else {
                        
                    }
                }
                
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .frame(width: 350, height: 50)
                .font(.title)
                .foregroundColor(.white)
                .background(Color.mint)
                .cornerRadius(10)
                
                //Spacer
                Spacer()
                
            }
            .navigationTitle("Register")
            
            onAppear{
                //Call UserDefaults bool
                if(UserDefaults.standard.bool(forKey: kIsloggedIn)) {
                    //If uses is logged in already, set the isLoggedIn local variable to true
                    isLoggedIn = true
                }
            }
            
        }//NavigationView
        
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
