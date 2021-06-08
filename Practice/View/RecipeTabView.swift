//
//  RecipeTabView.swift
//  Practice
//
//  Created by kushagra sinha on 07/06/21.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        
        TabView{
            
            RecipeFeaturedView()
                .tabItem {
                    VStack{
                        Image(systemName: "star.fill")
                        
                        Text("Featured View")
                    }
                }
            
            RecipeListView()
                .tabItem {
                    VStack{
                        Image(systemName: "list.bullet")
                        
                        Text("Recipe List")
                    }
                    
                    
                }
            
        }
        
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
            .environmentObject(RecipeModel())
    }
}
