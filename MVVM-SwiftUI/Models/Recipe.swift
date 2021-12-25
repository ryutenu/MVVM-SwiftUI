//
//  Recipe.swift
//  MVVM-SwiftUI
//
//  Created by Alan Liu on 2021/12/11.
//

import Foundation

class Recipe: Identifiable, Decodable {
    
    var id: UUID?
    var name = ""
    var cuisine = ""
}
