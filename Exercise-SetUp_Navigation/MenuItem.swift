//
//  MenuItem.swift
//  Onboarding-Flow-Main
//
//  Created by Juan Romero on 25/08/23.
//

import SwiftUI

//Conform to Decodable Protocol
struct MenuItem: Decodable {
    
    //Declare Item Properties
    let title : String
    let price : String
    let image: String
}

