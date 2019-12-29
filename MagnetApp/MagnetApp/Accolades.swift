//
//  Accolades.swift
//  MagnetApp
//
//  Created by Joe Kadi on 27/12/2019.
//  Copyright © 2019 Joe Kadi. All rights reserved.
//

import Foundation
struct Accolade: Identifiable, Hashable {
    let id = UUID()
    var imageName: String
    var number: String
    var shown: Bool
   
}

var accolades = [
    Accolade(imageName: "award", number: "1", shown: true),
    Accolade(imageName:"award", number: "3", shown: true),
    Accolade(imageName:"award", number: "10", shown: true),
    Accolade(imageName:"award", number: "15", shown: false),
    Accolade(imageName:"award", number: "30", shown: false),
    Accolade(imageName: "award", number: "90", shown: false),
    Accolade(imageName:"award", number: "180", shown: false),
    Accolade(imageName:"award", number: "365", shown: false)
]

func getAccolades() -> [Accolade]{
    return accolades
}
