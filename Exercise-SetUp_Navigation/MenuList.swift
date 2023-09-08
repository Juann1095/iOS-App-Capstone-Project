//
//  MenuList.swift
//  Onboarding-Flow-Main
//
//  Created by Juan Romero on 25/08/23.
//
//Menu Models

import Foundation
import UIKit

//STRUCTS TO DECODE JSON DATA INTO A SUITABLE SWIFT FORMAT

//Conform to Decodable Protocol
struct JSONMenu: Codable {
    //Create a single constant property called menu that holds Array of --MenuItem--
    let menu : [MenuItem]
    
}

struct MenuItem: Codable, Identifiable {
    var id = UUID()
    let title: String
    let price : String
    let description : String
    let image: String
}





    
    
    

