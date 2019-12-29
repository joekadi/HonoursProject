//
//  TipItem.swift
//  MagnetApp
//
//  Created by Joe Kadi on 27/12/2019.
//  Copyright © 2019 Joe Kadi. All rights reserved.
//

import SwiftUI

struct TipItem: View {
    var title: String
    var content: String
    var sign: String
    var body: some View {
       ZStack {
            VStack {
                HStack {
                    // Banner Content Here
                    VStack(alignment: .leading, spacing: 2) {
                        HStack{
                            Image(systemName: self.sign)
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.white)
                            Text(self.title)
                               .font(.headline)
                               .bold()
                        }
                       
                        Text(self.content)
                            .font(Font.system(size: 15, weight: Font.Weight.light, design: Font.Design.default))
                            //.multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }.foregroundColor(Color.white)
                    .padding(12)
                        .frame(minWidth: 0, maxWidth: 350, alignment: Alignment.topLeading)
                        .background(Color.purple)

                    .cornerRadius(8)
                   // Spacer()
                }
                
                //Spacer()
            }
            
        }
}
}
struct TipItem_Previews: PreviewProvider {
    static var previews: some View {
        TipItem(title: "you could have saved £4.70", content: "yesterday if you made burgers with the beef you threw out", sign: "dollarsign.circle.fill")
    }
}
