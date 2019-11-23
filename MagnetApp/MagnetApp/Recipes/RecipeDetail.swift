//
//  RecipeDetail.swift
//  MagnetApp
//
//  Created by Joe Kadi on 21/11/2019.
//  Copyright © 2019 Joe Kadi. All rights reserved.
//

import SwiftUI

struct RecipeDetail: View {
    
    var recipe:Recipe
     
    
    var body: some View {
        
        List {
            ZStack(alignment: .bottom) {
                Image(recipe.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Rectangle()
                    .frame(height: 80)
                    .opacity(0.25)
                    .blur(radius: 10)
                HStack{
                    VStack(alignment: .leading, spacing: 8.0){
                        Text(recipe.name)
                            .foregroundColor(Color.white)
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    .padding(.leading)
                    .padding(.bottom)
                    Spacer()
                }
            }
            
            Text("Cooking Instructions")
                .font(.headline)
                .fontWeight(.bold)
            
            Text(recipe.cookingInstructions)
                .font(.body)
            
                
                
                        
            }
                .offset(y: -50)
                .navigationBarHidden(true)
            
            
            
        }
        
        
    }


struct RecipeDetail_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetail(recipe: recipes[0])
    }
}
