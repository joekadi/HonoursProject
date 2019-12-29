//
//  ContentView.swift
//  MagnetApp
//
//  Created by Joe Kadi on 15/11/2019.
//  Copyright © 2019 Joe Kadi. All rights reserved.
//

import SwiftUI
import QGrid



struct ContentView: View {
  
    @State private var selected: Int = 0
    
    var body: some View {
        
        TabView(selection: $selected) {
            DateTracking().tabItem({
                Image(systemName: "calendar")
                    .font(.title)
                //Text("Date Tracking")
                }).tag(0)
            
            RecipesVertical(recipes: recipes, food: "").tabItem({
                Image(systemName: "book.fill")
                    .font(.title)
                //Text("Recipes")
                }).tag(1)
            
            DashboardScreen().tabItem({
                Image(systemName: "bell.fill")
                .font(.title)
                //Text("Alerts")
                
                }).tag(2)
            
            StatsScreen().tabItem({
                Image(systemName: "person.fill")
                    .font(.title)
                //Text("Joe")
                }).tag(3)
            
            
        }
        .accentColor(.purple)
        
        
    }
    
}
        

    



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
