//
//  OrderItemCell.swift
//  Tablespace
//
//  Created by David Woodruff on 2016-03-19.
//  Copyright © 2016 tablespace. All rights reserved.
//

import UIKit

class OrderItemCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var quantityLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var foodImageView: UIImageView!
    
    @IBAction func willDeleteItem(sender: AnyObject) {
        delegate.removeItemFromOrder(item)
    }
    
    @IBAction func willEditItem(sender: AnyObject) {
    }
    
    var delegate: OrderViewController!
    
    var item: OrderItem! {
        didSet {
            nameLabel.text = item.name
            quantityLabel.text = "\(item.quantity)"
            priceLabel.text = "$\(item.price * Float(item.quantity))"
            foodImageView.image = item.image
        }
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}
