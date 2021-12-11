//
//  ContentView.swift
//  MVVM-SwiftUI
//
//  Created by Alan Liu on 2021/12/11.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        
        VStack {
            List(model.recipes) { recipe in
                VStack(alignment: .leading) {
                    Text(recipe.name)
                        .font(.title)
                    Text(recipe.cuisine)
                }
            }
            
            Button("Add recipe") {
                model.addRecipe()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
