//
//  RecipeDetailview.swift
//  Practice
//
//  Created by kushagra sinha on 07/06/21.
//

import SwiftUI

struct RecipeDetailview: View {
    
    var recipe: Recipe
    
    var body: some View {
        
        ScrollView{
            
            VStack(alignment: .leading){
                
                // MARK:Recipe Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                
                // MARK:Recipe Ingredients
                VStack(alignment: .leading) {
                    Text("ingredients")
                        .font(.headline)
                        .padding([.bottom, .top], 5)
                    
                    ForEach (recipe.ingredients){index in
                        Text( "⋅ " + index.name)
                    }
                }
                .padding(.horizontal)
                
                
                Divider()
                
                // MARK: directions
                
                VStack(alignment: .leading){
                    Text("Direction's")
                        .font(.headline)
                        .padding([.bottom, .top], 5)
                    
                    ForEach(0...recipe.directions.count-1, id: \.self){index in
                        
                        Text(String(index+1) + "⋅ " + recipe.directions[index])
                            .padding(.bottom, 5)
                        
                    }
                    
                }
                .padding(.horizontal)
                
            }
            
        }.navigationBarTitle(recipe.name)
        
    }
}

struct RecipeDetailview_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = RecipeModel()
        
        RecipeDetailview(recipe: model.recipes[0])
    }
}
