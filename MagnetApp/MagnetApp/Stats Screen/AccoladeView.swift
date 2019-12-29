//
//  AccoladeView.swift
//  MagnetApp
//
//  Created by Joe Kadi on 27/12/2019.
//  Copyright © 2019 Joe Kadi. All rights reserved.
//

import SwiftUI

struct AccoladeView: View {
    var picture: String
    var number: String
    var shown: Bool
    
    
    var body: some View {
        VStack{
            Image(self.picture)
               .resizable()
               .frame(width: 50, height: 50)
               .foregroundColor(.purple)
                .opacity(shown ? 1 : 0.2)
            
               
            Text(self.number)
                .font(.title)
                .fontWeight(.heavy)
                .offset(y: -5)
                .foregroundColor(.purple)
                .opacity(shown ? 1 : 0.2)
        }
        
    }
}

struct AccoladeView_Previews: PreviewProvider {
    static var previews: some View {
        AccoladeView(picture: "award", number: "365", shown: true)
    }
}
