//
//  RecipeFeaturedView.swift
//  Practice
//
//  Created by kushagra sinha on 07/06/21.
//

import SwiftUI

struct RecipeFeaturedView: View {
    
    @EnvironmentObject var model: RecipeModel
    
    var body: some View {
        
        VStack(alignment: .leading){
            
            Text("Featured Recipe")
                .font(.largeTitle)
                .bold()
                .padding(.leading)
                .padding(.top, 40)
            
            GeometryReader{geometry in
                
                TabView{
                    
                    ForEach( 0..<model.recipes.count){index in
                        
                        if model.recipes[index].featured == true {
                            
                            ZStack{
                                
                                Rectangle()
                                    .foregroundColor(.white)
                                
                                VStack(spacing: 0){
                                    
                                    Image(model.recipes[index].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .clipped()
                                    
                                    Text(model.recipes[index].name)
                                    
                                }
                                
                                
                            }
                            .frame(width: geometry.size.width - 40, height: geometry.size.height - 100, alignment: .center)
                            .cornerRadius(20)
                            .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 1), radius: 10, x: -5, y: 6)
                            
                        }
                        
                    }
                    
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: PageIndexViewStyle.BackgroundDisplayMode.always))
                
            }
            
            VStack(alignment: .leading, spacing: 10){
                
                Text("Preparation Time:")
                    .font(.headline)
                
                Text("1 hour")
                
                Text("Highlights:")
                    .font(.headline)
                
                Text("Healthy Hearty")
                
                
            }
            .padding([.leading, .bottom])
            
        }
        
    }
    
}


struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView()
            .environmentObject(RecipeModel())
    }
}
