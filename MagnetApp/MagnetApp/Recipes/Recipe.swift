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
    
    Recipe(name: "All American Cheeseburgers", imageName: "cheeseburgers", description: "Shabalabadingdong", ingredients: ["Hamburger", "Cheese", "Onion", "Lettuce"], cookingInstructions: "1. Divide the ground beef \n\n2. Shape the patties \n\n3. Warm the pan \n\n4. Toast the buns \n\n5. Increase the heat to medium-high \n\n6. Cook the burgers for 3 to 5 minutes \n\n7. Flip the burgers and cook another 3 to 5 minutes \n\n8. Voila, you have cheeseburgers!"),
    Recipe(name: "Chicken Stir Fry", imageName: "chickenstirfry", description: "Shabalabadingdong", ingredients:["Chicken", "Noodles", "Onion", "Brocolli", "Egg"], cookingInstructions: "1. Divide the ground beef \n\n2. Shape the patties \n\n3. Warm the pan \n\n4. Toast the buns \n\n5. Increase the heat to medium-high \n\n6. Cook the burgers for 3 to 5 minutes \n\n7. Flip the burgers and cook another 3 to 5 minutes \n\n8. Voila, you have cheeseburgers!"),
    Recipe(name: "Perfect Apple Pie", imageName: "applepie", description: "a very yummy apple pie", ingredients: ["Apple", "Pastry", "Egg"],cookingInstructions: "1. Peel and halve the 3 ripe bananas lengthways and lay, cut-side down, in the tin. \n\n2. Beat together the butter, sugar, eggs, vanilla and overripe banana with an electric whisk. \n\n3. Carefully spoon into the tin without dislodging the bananas. Bake the cake for 45 mins-1 hr until a skewer inserted into the centre comes out with only moist crumbs. \n\n4. Toast the pecans for 1-2 mins in a pan, add the remaining ingredients and cook until the butter has melted. \n\n5. Then bubble for 5 mins until it has thickened a little. \n\n6. Pour over the remaining maple syrup and allow it to soak in for a few mins, then turn the cake out of the tin, upside-down, onto a serving plate. \n\n7. Voila, you have banana cake!"),
    Recipe(name: "Upside-Down Banana Cake", imageName: "bananacake", description: "upside down banana cake with maple sauce", ingredients:["Banana", "Egg", "Milk"], cookingInstructions: "1. Peel and halve the 3 ripe bananas lengthways and lay, cut-side down, in the tin. \n\n2. Beat together the butter, sugar, eggs, vanilla and overripe banana with an electric whisk. \n\n3. Carefully spoon into the tin without dislodging the bananas. Bake the cake for 45 mins-1 hr until a skewer inserted into the centre comes out with only moist crumbs. \n\n4. Toast the pecans for 1-2 mins in a pan, add the remaining ingredients and cook until the butter has melted. \n\n5. Then bubble for 5 mins until it has thickened a little. \n\n6. Pour over the remaining maple syrup and allow it to soak in for a few mins, then turn the cake out of the tin, upside-down, onto a serving plate. \n\n7. Voila, you have banana cake!"),
    Recipe(name: "Crispy Chilli Beef", imageName: "crispybeef", description: "crispy chilli beef with sweet coating", ingredients:["Beef", "Egg", "Onion", "Brocolli", "Hamburger"], cookingInstructions: "1. Slice the steaks into thin strips and place into a small bowl. \n\n2. Add the cornflour, 5 spice, salt, and pepper. Mix until evenly coated. \n\n3. Carefully heat the oil in a deep saucepan until it reaches 190°C (375°F). \n\n4. Carefully place the beef strips into the oil and fry for about 4-5 minutes, until golden brown. \n\n5. Stir in the soy sauce, sweet chili sauce, red wine vinegar, and tomato ketchup until thick. \n\n6. Stir in the beef steaks until evenly coated then garnish with onion and brocolli. \n\n7. Voila, you have spicy crispy beef!")
    

]

func getRecipes() -> [Recipe] {
    return recipes
}
