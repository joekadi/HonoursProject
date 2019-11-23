//
//  ListItem.swift
//  MagnetApp
//
//  Created by Joe Kadi on 15/11/2019.
//  Copyright © 2019 Joe Kadi. All rights reserved.
//

import SwiftUI
import QGrid


struct ListItem: View {
   
    var imageName: String
    var daysLeft: Int
    var redBackground: Bool

    var body: some View {
        
        VStack{
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: ContentMode.fit)
                .frame(width:90, height:90)
            
            Text(String(daysLeft) + " days")
                .fontWeight(.bold)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .frame(width: 65, height:28)
                .background(redBackground ? Color.red : Color.green)
                .cornerRadius(8)
            
        }
        .frame(height:120)
        .padding()
        //.background(Color.white)
        .cornerRadius(3)
        
        
    }
}

struct ListItem_Previews: PreviewProvider {
    static var previews: some View {
        ListItem(imageName: "apple", daysLeft: 2, redBackground: false)
    }
}
