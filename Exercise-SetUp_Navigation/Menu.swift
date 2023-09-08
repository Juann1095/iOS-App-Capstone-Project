//
//  Menu.swift
//  Created by Juan Romero on 22/08/23.
//

import SwiftUI
import CoreData

struct Menu: View {
    //Search field,
    @State var searchText = ""
    
    var body: some View {
        VStack {
            Text("Little Lemon")
                .font(.title)
            Text("Chicago")
                .font(.callout)
            Text("Little Lemon is a family owned Mediterranean restaurant, focused on traditional recipes served with a modern twist")
                .font(.headline)
            
            //Remove list from menu view , and in its place call FetchedObjects, this will fetch all the Dishes from core data and make them avaliable to use in the closure
            
            //TextField with the searchtext var above FetchedObjects element
            TextField("Search menu", text: $searchText)
            
            //Set sortDescriptors
            //FetchedObjects with argument
            FetchedObjects(sortDescriptors: buildSortDescriptors(), predicate: NSPredicate)
            
    
            List{
                ForEach (dishes){ Dish in
                    //HStack
                    HStack{
                        //Text
                        Text(title)
                        Text(price)
                        
                        //AsyncImage:
                        AsyncImage(url: URL (string: "")) { image in
                            image.resizable()
                        } placeholder: {
                            //ProgressView()
                        }
                        
                            
                        
                    }
                }
                
            }
            
            //Call the method getMenuData
            .onAppear{
                getMenuData()
            }
            
        }
    }
    
    func buildPredicate() -> NSPredicate{
        if (searchText == ""){
           return NSPredicate(value: true)
        }else{
          //Return instance of NSPredicate , it will try to match part of the title property of the Dish to the given textand return all objects that match
            return NSPredicate(format:"title CONTAINS [cd] %@", searchText)
           
        }
        
        
    }
    
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
      
    }
}

//Hold URL & URL Request
func getMenuData() async{
    @Environment(\.managedObjectContext) var viewContext
    //Clear the database each time before saving the menu list again
    let persistencecontroller = PersistenceController()
    
    let url = URL(string:"https://raw.githubusercontent.com/Meta-Mobile-Developer-PC/Working-With-Data-API/main/menu.json")!
    let task = URLSession.shared.dataTask(with: url) {(data: Data?, response: URLResponse?, error: Error?) in
    guard let data = data else { return }
    print(String(data: data, encoding: .utf8)!)
        
        if let menu = try? JSONDecoder().decode([String:JSONMenu].self, from: data){
            print("Decoded : \(menu)")
            
            for menu in menu {
            //initialize a new --Dish-- instance and store it into a constant
              let dish = Dish(context: viewContext)
            //Use constant to set --title-- --image-- --price--
                dish.title = "title"
                dish.image = "image"
                dish.price = "price"
            }
            
            //Save data into the database
            try? viewContext.save()
            
            
        }
        
        
    }
    task.resume()
    
}

func buildSortDescriptors() -> NSSortDescriptor {
    //Return an array of sort descriptors of --Dish-- objects
    
    @FetchRequest(
        sortDescriptors:[
        NSSortDescriptor(key: "title",
                         ascending: true,
                         selector: #selector(NSString.localizedStandardCompare))
        ],
        
        animation: .default)
     var dishes: FetchedResults<Dish>
            
}


func test(){
    @FetchRequest(
        sortD,
        predicate: NSPredicate(),
        animation: .default
    )
    
}





    
    

