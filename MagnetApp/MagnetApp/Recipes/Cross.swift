//
//  Cross.swift
//  MagnetApp
//
//  Created by Joe Kadi on 20/11/2019.
//  Copyright © 2019 Joe Kadi. All rights reserved.
//

import SwiftUI

struct Cross: View {
    var body: some View {
        Image("cross")
            .resizable()
            .frame(width: 15, height: 15)
            .foregroundColor(Color.red)
           
    }
}

struct Cross_Previews: PreviewProvider {
    static var previews: some View {
        Cross()
    }
}
