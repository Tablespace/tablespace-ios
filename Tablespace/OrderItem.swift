//
//  OrderItem.swift
//  Tablespace
//
//  Created by David Woodruff on 2016-03-19.
//  Copyright © 2016 tablespace. All rights reserved.
//

import Foundation
import UIKit

func == (lhs: OrderItem, rhs: OrderItem) -> Bool {
    return lhs.hashValue == rhs.hashValue
}

class OrderItem {
    
    init(menuItem: MenuItem, quantity: Int, modifications: [String] = []) {
        self.menuItem = menuItem
        self.quantity = quantity
        self.modifications = modifications
    }
    
    var hashValue: Int {
        get {
            return menuItem.name.hashValue
        }
    }
    
    
    var menuItem: MenuItem
    var quantity: Int
    var modifications: [String]
    
    var name: String {
        get {
            return menuItem.name
        }
    }
    
    var price: Float {
        get {
            return menuItem.price
        }
    }
    
    var image: UIImage {
        get {
            return menuItem.image
        }
    }
    
    
}