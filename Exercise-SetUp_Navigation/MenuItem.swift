//
//  MenuItem.swift
//  Onboarding-Flow-Main
//
//  Created by Juan Romero on 25/08/23.
//

//JSON LINK:
//https://raw.githubusercontent.com/Meta-Mobile-Developer-PC/Working-With-Data-API/main/menu.json

import SwiftUI

//Conform to Decodable Protocol
struct MenuItem: Decodable {
    
    //Declare Item Properties
    let title : String
    let descriptionn: String
    let price : String
    let image: String    
    let category : String
    
    
}

