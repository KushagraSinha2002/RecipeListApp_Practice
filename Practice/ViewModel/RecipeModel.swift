//
//  RecipeModel.swift
//  Practice
//
//  Created by kushagra sinha on 07/06/21.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        self.recipes = DataService.getLocalData()
        
    }
    
}
