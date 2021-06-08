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
        Text("Featured View")
    }
}

struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView()
    }
}
