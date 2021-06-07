//
//  ContentView.swift
//  Practice
//
//  Created by kushagra sinha on 06/06/21.
//

import SwiftUI

struct RecipeListView: View {
    
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        
        NavigationView{
            
            List(model.recipes){r in
                
                NavigationLink(
                    destination: RecipeDetailview(recipe: r),
                    label: {
                        HStack{
                            
                            Image(r.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50, alignment: .center)
                                .clipped()
                            
                            Text(r.name)
                            
                            
                        }
                    })
                
            }.navigationBarTitle("My Recipe's")
            
        }
        
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
