//
//  MenuItemCell.swift
//  Tablespace
//
//  Created by David Woodruff on 2016-03-18.
//  Copyright © 2016 tablespace. All rights reserved.
//

import UIKit

class MenuItemCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var item: MenuItem! {
        didSet {
            imageView.image = item.image
            nameLabel.text = item.name
        }
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
