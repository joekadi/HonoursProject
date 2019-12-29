//
//  DashboardScreen.swift
//  MagnetApp
//
//  Created by Joe Kadi on 27/12/2019.
//  Copyright © 2019 Joe Kadi. All rights reserved.
//

import SwiftUI

struct DashboardScreen: View {
    var body: some View {
        NavigationView{
            ScrollView{
        
                VStack{
                        TipItem(title: "use your onions", content: "they expire in 1 day, use them for many meals. check out recipes!", sign: "exclamationmark.circle.fill")
                        TipItem(title: "save £2.30 by using your apples", content: "apples are expiring tomorrow, you could cook apple pie or just eat them", sign: "dollarsign.circle.fill")
                        TipItem(title: "you wasted £4.70", content: "by throwing out 500g of beef yesterday", sign: "dollarsign.circle.fill")
                        TipItem(title: "use your chicken", content: "it expires in 2 days, make sure to use it. you could cook a chicken stir fry!", sign: "exclamationmark.circle.fill")
                        TipItem(title: "you wasted £3.99", content: "by throwing out 2L of milk yesterday", sign: "dollarsign.circle.fill")
                        
                      }
                .navigationBarTitle(Text("Alerts"))
        }
        }
      
    }
}

struct DashboardScreen_Previews: PreviewProvider {
    static var previews: some View {
        DashboardScreen()
    }
}
