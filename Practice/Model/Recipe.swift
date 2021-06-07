//
//  RecipeModel.swift
//  Practice
//
//  Created by kushagra sinha on 07/06/21.
//

import Foundation

class Recipe: Identifiable, Decodable {
    
    var id: UUID?
    var name: String
    var featured: Bool
    var image: String
    var description: String
    var prepTime: String
    var cooktime: String
    var totalTime: String
    var servings: Int
    var ingredients: [String]
    var directions: [String]
}
