//
//  DashboardScreen.swift
//  MagnetApp
//
//  Created by Joe Kadi on 27/12/2019.
//  Copyright © 2019 Joe Kadi. All rights reserved.
//

import SwiftUI

struct DashboardScreen: View {
    @State var sortBySelected: Bool = false
    @State var arraySelection: Int = 0
    var body: some View {
        NavigationView{
            ScrollView(showsIndicators: false){
                ZStack{
                    VStack{
                            if(self.arraySelection == 0){
                                NavigationLink(destination: RecipesVertical2(recipes: getRecipes().filter(({
                                    $0.ingredients.contains("Hamburger")})), food: "Hamburgers", offset: -65.0)){
                                    TipItem(title: "use your hamburgers!", content: "they expire in 1 day, use them for many meals. press here to check out recipes!", sign: "exclamationmark.circle.fill")
                                }
                                
                                NavigationLink(destination: RecipesVertical2(recipes: getRecipes().filter(({
                                    $0.ingredients.contains("Onion")})), food: "Onions", offset: -65.0)){
                                    TipItem(title: "use your onions!", content: "they expire in 1 day, use them for many meals. press here to check out recipes!", sign: "exclamationmark.circle.fill")
                                }
                                
                                NavigationLink(destination: RecipesVertical2(recipes: getRecipes().filter(({
                                    $0.ingredients.contains("Brocolli")})), food: "Brocolli", offset: -65.0)){
                                    TipItem(title: "use your brocolli!", content: "it expires in 2 days, use them for many meals. press here to check out recipes!", sign: "exclamationmark.circle.fill")
                                }
                                TipItem(title: "you wasted £4.70", content: "by throwing out 500g of beef yesterday", sign: "dollarsign.circle.fill")
                                TipItem(title: "you wasted £3.99", content: "by throwing out 2L of milk yesterday", sign: "dollarsign.circle.fill")
                                TipItem(title: "you wasted £1.79", content: "by throwing out your bagels today", sign: "dollarsign.circle.fill")
                        }
                        
                        if(self.arraySelection == 1){
                                TipItem(title: "you wasted £4.70", content: "by throwing out 500g of beef yesterday", sign: "dollarsign.circle.fill")
                                TipItem(title: "you wasted £3.99", content: "by throwing out 2L of milk yesterday", sign: "dollarsign.circle.fill")
                                TipItem(title: "you wasted £1.79", content: "by throwing out your bagels today", sign: "dollarsign.circle.fill")
                                
                                NavigationLink(destination: RecipesVertical2(recipes: getRecipes().filter(({
                                    $0.ingredients.contains("Hamburger")})), food: "Hamburgers", offset: -65.0)){
                                    TipItem(title: "use your hamburgers!", content: "they expire in 1 day, use them for many meals. press here to check out recipes!", sign: "exclamationmark.circle.fill")
                                }
                                
                                NavigationLink(destination: RecipesVertical2(recipes: getRecipes().filter(({
                                    $0.ingredients.contains("Onion")})), food: "Onions", offset: -65.0)){
                                    TipItem(title: "use your onions!", content: "they expire in 1 day, use them for many meals. press here to check out recipes!", sign: "exclamationmark.circle.fill")
                                }
                                
                                NavigationLink(destination: RecipesVertical2(recipes: getRecipes().filter(({
                                    $0.ingredients.contains("Brocolli")})), food: "Brocolli", offset: -65.0)){
                                    TipItem(title: "use your brocolli!", content: "it expires in 2 days, use them for many meals. press here to check out recipes!", sign: "exclamationmark.circle.fill")
                                }
                        }
                        
                        if(self.arraySelection == 2){
                            TipItem(title: "you wasted £4.70", content: "by throwing out 500g of beef yesterday", sign: "dollarsign.circle.fill")
                            
                           
                            
                            NavigationLink(destination: RecipesVertical2(recipes: getRecipes().filter(({
                                $0.ingredients.contains("Hamburger")})), food: "Hamburgers", offset: -65.0)){
                                TipItem(title: "use your hamburgers!", content: "they expire in 1 day, use them for many meals. press here to check out recipes!", sign: "exclamationmark.circle.fill")
                            }
                            
                            TipItem(title: "you wasted £3.99", content: "by throwing out 2L of milk yesterday", sign: "dollarsign.circle.fill")
                            
                            NavigationLink(destination: RecipesVertical2(recipes: getRecipes().filter(({
                                $0.ingredients.contains("Onion")})), food: "Onions", offset: -65.0)){
                                TipItem(title: "use your onions!", content: "they expire in 1 day, use them for many meals. press here to check out recipes!", sign: "exclamationmark.circle.fill")
                            }
                            
                            TipItem(title: "you wasted £1.79", content: "by throwing out your bagels today", sign: "dollarsign.circle.fill")
                            
                            NavigationLink(destination: RecipesVertical2(recipes: getRecipes().filter(({
                                $0.ingredients.contains("Brocolli")})), food: "Brocolli", offset: -65.0)){
                                TipItem(title: "use your brocolli!", content: "it expires in 2 days, use them for many meals. press here to check out recipes!", sign: "exclamationmark.circle.fill")
                            }
                            
                            
                                
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
                               Text("Actions First").tag(0)
                               Text("Wastage First").tag(1)
                               Text("Random").tag(2)
                                          
                           }
                           .labelsHidden()
                                   
                           
                       }
                       .frame(width:410)
                       .background(Color(red: 239 / 255, green: 239 / 255, blue: 239 / 255))
                       .offset(x: 0, y: 140)
                           
                       
                   }

                }
                .navigationBarTitle(Text("Alerts"))
                .navigationBarItems(trailing:
                
                HStack{
                    
                    Button(action: {
                        self.sortBySelected.toggle()
                        }){
                        Text("Sort by")
                    }
                    
                        })
        }
        }
      
    }
}

struct DashboardScreen_Previews: PreviewProvider {
    static var previews: some View {
        DashboardScreen()
    }
}
