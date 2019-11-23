//
//  Item.swift
//  MagnetApp
//
//  Created by Joe Kadi on 15/11/2019.
//  Copyright © 2019 Joe Kadi. All rights reserved.
//

import Foundation

struct Item: Identifiable, Hashable {
    let id = UUID()
    var imageName: String
    var daysLeft: Int
    var redBackground: Bool
}

// sort array by daysLeft & Name.

var items = [
    Item(imageName: "apple", daysLeft: 1, redBackground: true),
    Item(imageName: "hamburger", daysLeft: 1, redBackground: true),
    Item(imageName: "onion", daysLeft: 1, redBackground: true),
    Item(imageName: "banana", daysLeft: 2, redBackground: true),
    Item(imageName: "lettuce", daysLeft: 2, redBackground: true),
    Item(imageName: "brocolli", daysLeft: 2, redBackground: true),
    Item(imageName: "chicken", daysLeft: 3, redBackground: true),
    Item(imageName: "beef", daysLeft: 3, redBackground: true),
    Item(imageName: "cheese", daysLeft: 3, redBackground: true),
    Item(imageName: "pear", daysLeft: 4, redBackground: false),
    Item(imageName: "egg", daysLeft: 4, redBackground: false),
    Item(imageName: "strawberry", daysLeft: 5, redBackground: false),
    Item(imageName: "grapes", daysLeft: 5, redBackground: false),
    Item(imageName: "milk", daysLeft: 5, redBackground: false),
    Item(imageName: "cake", daysLeft: 6, redBackground: false),
    Item(imageName: "tomatoe", daysLeft: 7, redBackground: false),
    Item(imageName: "mullerrice", daysLeft: 9, redBackground: false),
    Item(imageName: "chocolate", daysLeft: 9, redBackground: false),
    
    
]

func getItemsSortedByNames() -> [Item] {
    let sortedItems = items.sorted{
        $0.imageName < $1.imageName
    }
    
    return sortedItems
}

func getItemsSortedByDaysLeft() -> [Item] {
    let sortedItems = items.sorted{
        $0.daysLeft < $1.daysLeft
    }
    
    return sortedItems
}
