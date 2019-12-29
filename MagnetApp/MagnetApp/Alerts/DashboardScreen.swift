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
            ScrollView{
                ZStack{
                VStack{
                        if(self.arraySelection == 0){
                            TipItem(title: "use your onions!", content: "they expire in 1 day, use them for many meals. check out recipes!", sign: "exclamationmark.circle.fill")
                            TipItem(title: "you wasted £4.70", content: "by throwing out 500g of beef yesterday", sign: "dollarsign.circle.fill")
                            TipItem(title: "use your chicken", content: "it expires in 2 days, make sure to use it. you could cook a chicken stir fry!", sign: "exclamationmark.circle.fill")
                            TipItem(title: "you wasted £3.99", content: "by throwing out 2L of milk yesterday", sign: "dollarsign.circle.fill")
                            TipItem(title: "use your apples!", content: "apples are expiring tomorrow, you could cook apple pie or just eat them", sign: "exclamationmark.circle.fill")
                            TipItem(title: "you wasted £1.79", content: "by throwing out your bagels today", sign: "dollarsign.circle.fill")
                    }
                    
                    if(self.arraySelection == 1){
                            TipItem(title: "use your onions!", content: "they expire in 1 day, use them for many meals. check out recipes!", sign: "exclamationmark.circle.fill")
                            TipItem(title: "use your chicken", content: "it expires in 2 days, make sure to use it. you could cook a chicken stir fry!", sign: "exclamationmark.circle.fill")
                            TipItem(title: "use your apples!", content: "apples are expiring tomorrow, you could cook apple pie or just eat them", sign: "exclamationmark.circle.fill")
                            TipItem(title: "you wasted £4.70", content: "by throwing out 500g of beef yesterday", sign: "dollarsign.circle.fill")
                            TipItem(title: "you wasted £3.99", content: "by throwing out 2L of milk yesterday", sign: "dollarsign.circle.fill")
                            TipItem(title: "you wasted £1.79", content: "by throwing out your bagels today", sign: "dollarsign.circle.fill")
                    }
                    
                    if(self.arraySelection == 2){
                            TipItem(title: "you wasted £4.70", content: "by throwing out 500g of beef yesterday", sign: "dollarsign.circle.fill")
                            TipItem(title: "you wasted £3.99", content: "by throwing out 2L of milk yesterday", sign: "dollarsign.circle.fill")
                            TipItem(title: "you wasted £1.79", content: "by throwing out your bagels today", sign: "dollarsign.circle.fill")
                            TipItem(title: "use your onions!", content: "they expire in 1 day, use them for many meals. check out recipes!", sign: "exclamationmark.circle.fill")
                            TipItem(title: "use your chicken", content: "it expires in 2 days, make sure to use it. you could cook a chicken stir fry!", sign: "exclamationmark.circle.fill")
                            TipItem(title: "use your apples!", content: "apples are expiring tomorrow, you could cook apple pie or just eat them", sign: "exclamationmark.circle.fill")
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
                               Text("Random").tag(0)
                               Text("Actions First").tag(1)
                               Text("Wastage First").tag(2)
                                          
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
