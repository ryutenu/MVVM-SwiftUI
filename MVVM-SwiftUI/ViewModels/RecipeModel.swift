//
//  RecipeModel.swift
//  MVVM-SwiftUI
//
//  Created by Alan Liu on 2021/12/11.
//

import Foundation

class RecipeModel {
    
    var recipes = [Recipe]()
    
    init() {
        // Create some dummy recipe data
        recipes.append(Recipe(name: "Spaghetti", cuisine: "Italian"))
        
        recipes.append(Recipe(name: "Sushi", cuisine: "Japanese"))
    }
    
    func addRecipe() {
        
        recipes.append(Recipe(name: "Burger", cuisine: "American"))
    }
}