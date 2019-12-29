//
//  GoalsModal.swift
//  MagnetApp
//
//  Created by Joe Kadi on 27/12/2019.
//  Copyright © 2019 Joe Kadi. All rights reserved.
//

import SwiftUI
import QGrid

struct GoalsModal: View {
   
    var accolades = getAccolades()
    @State private var showModal = false
    
    var body: some View {
        VStack{
       
            Text("DAYS NO WASTE GOALS")
                .font(.headline)
                .fontWeight(.semibold)
                .padding(.all, 20)
                .offset(y: 15)
            Image("earth")
                .resizable()
                .padding(.all, 10.0)
                .frame(width: 350, height: 280)
            Spacer()
            QGrid(accolades, columns: 4) { accolade in
                      AccoladeView(picture: accolade.imageName, number: accolade.number, shown: accolade.shown)
                
                      }
            .padding(10)
            .offset(y: 30)

        }
      
            
        }
    }


struct GoalsModal_Previews: PreviewProvider {
    static var previews: some View {
        GoalsModal()
    }
}
