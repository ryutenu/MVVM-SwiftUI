//
//  RecipeModel.swift
//  MVVM-SwiftUI
//
//  Created by Alan Liu on 2021/12/11.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        // Get the path to the json file within the app bundle
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        if let path = pathString {
            
            // Create a url object
            let url = URL(fileURLWithPath: path)
            
            // Error handling
            do {
                // Put the code that potentially throws an error
                
                // Create a data object with the data at the url
                let data = try Data(contentsOf: url)
                
                // Parse the data
                let decoder = JSONDecoder()
                
                do {
                    let recipeData = try decoder.decode([Recipe].self, from: data)
                    
                    // Set unique IDs for each instance
                    for recipe in recipes {
                        
                        // Set a unique ID for each recipe in the recipeData array
                        recipe.id = UUID()
                    }
                    
                    // Assign the data to the published property
                    recipes = recipeData
                }
                catch {
                    // Log Couldn't decode json
                    print(error)
                }
            }
            catch {
                // Execution will come here if an error is thrown
                // Handle the error
                print(error)
            }
        }
    }
    
    func addRecipe() {
    }
}
