//
//  ContentView.swift
//  MagnetApp
//
//  Created by Joe Kadi on 15/11/2019.
//  Copyright © 2019 Joe Kadi. All rights reserved.
//

import SwiftUI
import QGrid

struct DateTracking: View {
    
    @State var recipes: [Recipe] = getRecipes()
    @State var filterRecipesBy: String = ""
    @State private var searchTerm: String = ""
    @State var sortedNames: [Item] =  getItemsSortedByNames()
    @State var sortedDays: [Item] =  getItemsSortedByDaysLeft()
    @State var arraySelection: Int = 0
    @State var sortBySelected: Bool = false
    @State var recipesShown: Bool = false
    @State var buttonShown: Bool = true

    
    var body: some View {
        
        NavigationView{
         
            ZStack{
                VStack{
                    SearchBar(text: $searchTerm)
                    if(self.arraySelection == 0){
                        QGrid(sortedDays.filter {
                                    self.searchTerm.isEmpty ? true :
                                        $0.imageName.localizedCaseInsensitiveContains(self.searchTerm)
                                }, columns: 3) { item in
                                    
                                    NavigationLink(destination: RecipesVertical2(recipes: self.recipes.filter(({
                                        $0.ingredients.contains(item.imageName)
                                    })), food: item.imageName, offset: -65.0) ){
                                        ListItem(imageName: item.imageName, daysLeft: item.daysLeft, redBackground: item.redBackground )
                                    }

                                }
                                //.background(Color(red: 239 / 255, green: 239 / 255, blue: 239 / 255))
                            }
                    
                    if(self.arraySelection == 1){
                        QGrid(sortedNames.filter {
                                    self.searchTerm.isEmpty ? true :
                                        $0.imageName.localizedCaseInsensitiveContains(self.searchTerm)
                                }, columns: 3) { item in
                                          
                                    
                                    NavigationLink(destination: RecipesVertical2(recipes: self.recipes.filter(({
                                        $0.ingredients.contains(item.imageName)
                                    })), food: item.imageName, offset: -65.0)){
                                        ListItem(imageName: item.imageName, daysLeft: item.daysLeft, redBackground: item.redBackground )
                                     }
                                    
                                }
                            //.background(Color(red: 239 / 255, green: 239 / 255, blue: 239 / 255))
                        }
                        
                    }
                        
                
                
                if (self.sortBySelected == true){
                    VStack{
                        
                        Button(action: {
                            self.sortBySelected.toggle()
                        }) {
                            Text("Done")
                               
                        }
                        .offset(x: 150, y: 7)
                        
                        Picker(selection: self.$arraySelection, label:
                            Text("Picker Name")){
                            Text("Expiry Date").tag(0)
                            Text("Names").tag(1)
                                       
                        }
                        .labelsHidden()
                                
                        
                    }
                    .frame(width:375)
                    .background(Color(red: 239 / 255, green: 239 / 255, blue: 239 / 255))
                    .offset(x: 0, y: 140)
                        
                    
                }
                
               /* if (self.recipesShown == true){
                    VStack(alignment: .center, spacing: 15) {
                        
                    HStack {
                            Button(action: {self.recipesShown.toggle()
                            }){
                                Image("cross")
                                .resizable()
                                .frame(width: 15, height: 15)
                                .foregroundColor(Color.red)
                            }
                            .offset(x: -70, y: 11)
                            Text("Recipes using")
                                .font(.headline)
                                .fontWeight(.bold)
                                .padding(.top)
                                .offset(x: -50, y: 5)
                        }
                     
                        
                         
                        RecipesVertical(recipes: self.recipes.filter(({
                            self.filterRecipesBy.isEmpty ? true :
                                $0.ingredients.contains(self.filterRecipesBy)
                        }))) //self.recipes.filter($0.ingredients.contains(filterRecipesBy)))
                            .padding(.leading)
                            .offset(x: 0, y: 140)
                    }
                   // .frame(width:375, height:310, alignment: .center)
                   // .background(Color.white)
                    
                }
 
                        */
                
               /* if(buttonShown == true){
                    Button(action: {self.recipesShown = true
                        self.buttonShown = false
                    }){
                        Image("floatingrecipebutton")
                        .resizable()
                            .frame(width: 85, height: 85)
                            .shadow(radius: 10)
                                    
                                   }
                                       .offset(x: 125, y:200)
                }
               */
                
                
                
                
                
            }
                .navigationBarTitle(Text("Date Tracking"))
                .navigationBarItems(trailing:
                
                HStack{
                    
                    Button(action: {
                        self.sortBySelected.toggle()
                        }){
                        Text("Sort by")
                    }
                    
                        }
                        
                    
            )
                
            
        }
        
    }
        
}
    



struct DateTracking_Previews: PreviewProvider {
    static var previews: some View {
        DateTracking()
    }
}
