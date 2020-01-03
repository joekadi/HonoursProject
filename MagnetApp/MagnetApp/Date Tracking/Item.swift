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
    Item(imageName: "Apple", daysLeft: 1, redBackground: true),
    Item(imageName: "Hamburger", daysLeft: 1, redBackground: true),
    Item(imageName: "Onion", daysLeft: 1, redBackground: true),
    Item(imageName: "Banana", daysLeft: 2, redBackground: true),
    Item(imageName: "Lettuce", daysLeft: 2, redBackground: true),
    Item(imageName: "Brocolli", daysLeft: 2, redBackground: true),
    Item(imageName: "Chicken", daysLeft: 3, redBackground: true),
    Item(imageName: "Beef", daysLeft: 3, redBackground: true),
    Item(imageName: "Cheese", daysLeft: 3, redBackground: true),
    Item(imageName: "Pear", daysLeft: 4, redBackground: false),
    Item(imageName: "Egg", daysLeft: 4, redBackground: false),
    Item(imageName: "Strawberry", daysLeft: 5, redBackground: false),
    Item(imageName: "Grapes", daysLeft: 5, redBackground: false),
    Item(imageName: "Milk", daysLeft: 5, redBackground: false),
    Item(imageName: "Cake", daysLeft: 6, redBackground: false),
    Item(imageName: "Tomatoe", daysLeft: 7, redBackground: false),
    Item(imageName: "mullerrice", daysLeft: 9, redBackground: false),
    Item(imageName: "Chocolate", daysLeft: 9, redBackground: false),
    
    
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
