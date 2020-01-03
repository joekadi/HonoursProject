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
    var offset: CGFloat
    @State private var showModal = false
    var body: some View {
        
        NavigationView{
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
                    .padding([.top], 20.0)
                    .padding(.leading, 20.0)
                    
                    
                   // VStack(alignment: .center){
                        
                        ForEach(self.recipes, id: \.id){ recipe in
                         
                            
                           /* Button(action: {
                                self.showModal = true
                            }) {
                               VStack{
                                RecipeItem(recipe: recipe)
                                   .frame(width: 340)
                                   Divider()
                                }
                               .padding(10)
                            }.sheet(isPresented: self.$showModal) {
                                RecipeDetail(recipe: recipe)
                            }
                            */
                            
                             NavigationLink(destination: RecipeDetail(recipe: recipe)){
                                VStack{
                                    RecipeItem(recipe: recipe)
                                    .frame(width: 340)
                                    Divider()
                                }
                                
                            }
                            .padding(10.0)
                            
                        }
                   // }
                    
                }.offset(x: 0.0, y: self.offset)
                }
            
        .navigationBarTitle("")
        .navigationBarHidden(true)
        }
        
        
       
    }
}

struct RecipesVertical_Previews: PreviewProvider {
    static var previews: some View {
        RecipesVertical(recipes: recipes, food: "", offset: 0.0)
    }
}
