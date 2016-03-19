//
//  Order.swift
//  Tablespace
//
//  Created by David Woodruff on 2016-03-19.
//  Copyright © 2016 tablespace. All rights reserved.
//

import UIKit
import Foundation

class Order {
    
    let taxRate: Float = 0.05
    var items: [OrderItem] = []
    
    var gst: Float {
        return itemTotal * taxRate
    }
    
    var itemTotal: Float {
        get {
            var sum: Float = 0
            for item in items {
                sum += (item.price * Float(item.quantity))
            }
            return sum
        }
    }
    
    var orderTotal: Float {
        get {
            return gst + itemTotal
        }
    }
    
    func addItem(newItem: OrderItem) {
        for item in items {
            if newItem.name == item.name {
                item.quantity += 1
                return
            }
        }
        items.append(newItem)
    }
    
    func removeItem(item: OrderItem) {
        for i in 0...items.count-1 {
            if item == items[i] {
                items.removeAtIndex(i)
            }
        }
    }
    
    func sendToKitchen() {
        // code to send to kitchen
        print("Order sent to kitchen")
        clear()
    }
    
    func clear() {
        items = []
    }
}