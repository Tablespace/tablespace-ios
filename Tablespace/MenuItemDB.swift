//
//  MenuItemDB.swift
//  Tablespace
//
//  Created by David Woodruff on 2016-03-18.
//  Copyright © 2016 tablespace. All rights reserved.
//

import Foundation
import UIKit

class MenuItemDB {
    
    func getAppetizers() -> [MenuItem] {
        
        let images = [UIImage(named: "cactus_cuts"),
            UIImage(named: "caesar_salad"),
            UIImage(named: "classic_nachos"),
            UIImage(named: "fried_wings"),
            UIImage(named: "garlic_toast")]
        
        let names = ["Cactus Cuts",
            "Caesar Salad",
            "Classic Nachos",
            "Fried Wings",
            "Garlic Toast"]
        
        var items = [MenuItem]()
        
        for i in 0...images.count-1 {
            let item = MenuItem(menuType: .Appetizer, name: names[i], price: 7.99, image: images[i]!)
            items.append(item)
        }
        
        return items
        
    }
    
    func getEntrees() -> [MenuItem] {
         let images = [UIImage(named: "beef_dip"),
            UIImage(named: "chicken_and_mushroom_fettuccini"),
            UIImage(named: "chicken_fingers"),
            UIImage(named: "chicken_parmesan"),
            UIImage(named: "chicken_quesadilla"),
            UIImage(named: "deluxe_pizza"),
            UIImage(named: "jambalaya_fettucini"),
            UIImage(named: "lasagna"),
            UIImage(named: "pepperoni_pizza")]
        
        let names = ["Beef Dip",
            "Chicken and Mushroom Fettuccini",
            "Chicken Fingers",
            "Chicken Parmesan",
            "Chicken Quesadilla",
            "Deluxe Pizza",
            "Jambalaya Fettuccini",
            "Lasagna",
            "Pepperoni Pizza"]
        
        var items = [MenuItem]()
        
        for i in 0...images.count-1 {
            let item = MenuItem(menuType: .Entree, name: names[i], price: 7.99, image: images[i]!)
            items.append(item)
        }
        
        return items
    }
    
    func getDesserts() -> [MenuItem] {
        
        let images = [UIImage(named: "apple_crisp"),
            UIImage(named: "brownie"),
            UIImage(named: "chocolate_cake"),
            UIImage(named: "new_york_cheesecake")]
        
        let names = ["Apple Crisp",
            "Brownie",
            "Chocolate Cake",
            "New York Cheesecake"]
        
        var items = [MenuItem]()
        
        for i in 0...images.count-1 {
            let item = MenuItem(menuType: .Dessert, name: names[i], price: 7.99, image: images[i]!)
            items.append(item)
        }
        
        return items
    }
    
    func getDrinks() -> [MenuItem] {
        
        let images = [UIImage(named: "chocolate_milk"),
            UIImage(named: "fruit_juice"),
            UIImage(named: "milk")]
        
        let names = ["Chocolate Milk",
            "Fruit Juice",
            "Milk"]
        
        var items = [MenuItem]()
        
        for i in 0...images.count-1 {
            let item = MenuItem(menuType: .Drink, name: names[i], price: 7.99, image: images[i]!)
            items.append(item)
        }
        
        return items
        
    }
    
    
}