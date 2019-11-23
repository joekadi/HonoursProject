//
//  Recipe.swift
//  MagnetApp
//
//  Created by Joe Kadi on 19/11/2019.
//  Copyright © 2019 Joe Kadi. All rights reserved.
//

import Foundation
import SwiftUI

struct Recipe: Hashable, Identifiable {
    let id = UUID()
    var name:String
    var imageName:String
    var description:String
    var ingredients:[String]
    var cookingInstructions:String
}


var recipes = [
    
    Recipe(name: "All American Cheeseburgers", imageName: "cheeseburgers", description: "Shabalabadingdong", ingredients: ["hamburger", "cheese", "onion"], cookingInstructions: "1. Divide the ground beef \n\n2. Shape the patties \n\n3. Warm the pan \n\n4. Toast the buns \n\n5. Increase the heat to medium-high \n\n6. Cook the burgers for 3 to 5 minutes \n\n7. Flip the burgers and cook another 3 to 5 minutes \n\n8. Voila, you have cheeseburgers!"),
    Recipe(name: "Chicken Stir Fry", imageName: "chickenstirfry", description: "Shabalabadingdong", ingredients:["chicken", "nooodles", "onion"], cookingInstructions: "1. Divide the ground beef \n\n2. Shape the patties \n\n3. Warm the pan \n\n4. Toast the buns \n\n5. Increase the heat to medium-high \n\n6. Cook the burgers for 3 to 5 minutes \n\n7. Flip the burgers and cook another 3 to 5 minutes \n\n8. Voila, you have cheeseburgers!"),
    Recipe(name: "Perfect Apple Pie", imageName: "applepie", description: "a very yummy apple pie", ingredients: ["apple", "pastry", "eggs"],cookingInstructions: "1. Divide the ground beef \n\n2. Shape the patties \n\n3. Warm the pan \n\n4. Toast the buns \n\n5. Increase the heat to medium-high \n\n6. Cook the burgers for 3 to 5 minutes \n\n7. Flip the burgers and cook another 3 to 5 minutes \n\n8. Voila, you have cheeseburgers!")

]

func getRecipes() -> [Recipe] {
    return recipes
}
