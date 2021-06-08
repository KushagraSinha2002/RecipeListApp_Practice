//
//  ContentView.swift
//  Practice
//
//  Created by kushagra sinha on 06/06/21.
//

import SwiftUI

struct RecipeListView: View {
    
    @EnvironmentObject var model: RecipeModel
    
    var body: some View {
        
        NavigationView{
            
            ScrollView {
                
                
                LazyVStack(alignment: .leading) {
                    
                    Text("All Recipe's")
                        .font(.largeTitle)
                        .bold()
                        .padding(.top, 40)
                    
                    ForEach(model.recipes){r in
                        
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
                                        .foregroundColor(.black)
                                    
                                    
                                }
                            })
                        
                    }.navigationBarHidden(true)
                }.padding(.leading)
            }
            
        }
        
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
            .environmentObject(RecipeModel())
    }
}
