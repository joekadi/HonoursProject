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
    
    var body: some View {
        
        NavigationView{
            
        
            ScrollView(showsIndicators: false){
                VStack() {
                    ForEach(self.recipes, id: \.id){ recipe in
                        
                        NavigationLink(destination: RecipeDetail(recipe: recipe)){
                            RecipeItem(recipe: recipe)
                            .frame(width: 340)
                                
                            
                                
                                
                        }
                        
                        
                    }
                }
                }
            
        .navigationBarTitle("Recipes")
            
        }
        
       
    }
}

struct RecipesVertical_Previews: PreviewProvider {
    static var previews: some View {
        RecipesVertical(recipes: recipes)
    }
}
