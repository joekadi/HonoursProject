//
//  RecipeItem.swift
//  MagnetApp
//
//  Created by Joe Kadi on 19/11/2019.
//  Copyright © 2019 Joe Kadi. All rights reserved.
//

import SwiftUI

struct RecipeItem: View {
    
    var recipe:Recipe
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            Image(recipe.imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width:340, height: 170)
                .cornerRadius(10)
                .shadow(radius: 10)
            
            VStack(alignment: .leading, spacing: 7.0) {
                
                Text(recipe.name)
                    .font(.headline)
                    .foregroundColor(Color.black)
                
                Text("This meal will use your \(recipe.ingredients[0]), \(recipe.ingredients[1]) and \(recipe.ingredients[2]) which are almost expired!")
                    
                    .font(.subheadline)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .frame(height: 40)
                    .padding(.bottom)
            }
        
            
        }
        
        
        
    }
}

struct RecipeItem_Previews: PreviewProvider {
    static var previews: some View {
        RecipeItem(recipe: recipes[0])
    }
}
