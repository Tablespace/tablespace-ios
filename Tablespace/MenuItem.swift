//
//  MenuItem.swift
//  Tablespace
//
//  Created by David Woodruff on 2016-03-18.
//  Copyright © 2016 tablespace. All rights reserved.
//

import Foundation
import UIKit

enum MenuType {
    case Appetizer
    case Entree
    case Dessert
    case Drink
}

class MenuItem {
    
    init(menuType: MenuType, name: String, price: Float, image: UIImage) {
        self.menuType = menuType
        self.name = name
        self.price = price
        self.image = image
    }
    
    var menuType: MenuType
    var name: String
    var price: Float
    var image: UIImage
    
    
}