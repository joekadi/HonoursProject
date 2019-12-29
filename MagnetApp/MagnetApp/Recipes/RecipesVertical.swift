//
//  RecipeRow.swift
//  MagnetApp
//
//  Created by Joe Kadi on 20/11/2019.
//  Copyright © 2019 Joe Kadi. All rights reserved.
//

import SwiftUI

struct RecipesVertical: View {
    
    var recipes:[Recipe]
    var food: String
    
    var body: some View {
        
     
            ScrollView( showsIndicators: false){
                VStack(alignment: .leading) {
                    VStack(alignment: .leading){
                        HStack{
                            Text("Recipes You Can Cook")
                                .font(.title)
                                .fontWeight(.bold)
                            
                            
                    }
                        HStack{
                            if(self.food != ""){
                                Text("With")
                                    .font(.title)
                                    .fontWeight(.bold)
                            }
                            Text(self.food)
                                .font(.title)
                                .fontWeight(.bold)
                        }
                    }
                    
                    
                    VStack(alignment: .center){
                        ForEach(self.recipes, id: \.id){ recipe in
                            
                            NavigationLink(destination: RecipeDetail(recipe: recipe)){
                                RecipeItem(recipe: recipe)
                                .frame(width: 340)

                            }
                            
                            
                        }
                    }
                    
                }
                }
                        
        
        
       
    }
}

struct RecipesVertical_Previews: PreviewProvider {
    static var previews: some View {
        RecipesVertical(recipes: recipes, food: "")
    }
}
