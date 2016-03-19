//
//  MenuItemViewController.swift
//  Tablespace
//
//  Created by David Woodruff on 2016-03-18.
//  Copyright © 2016 tablespace. All rights reserved.
//

import UIKit

class MenuItemViewController: UIViewController {

    @IBAction func doneAction(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var quantityLabel: UILabel!
    @IBOutlet weak var quantityStepper: UIStepper!
    
    @IBOutlet weak var descriptionTextView: UITextView!
    
    @IBOutlet weak var modificationsTextView: UITextView!
    
    @IBAction func quantityChanged(sender: AnyObject) {
        quantityLabel.text = "\(quantityStepper.value)"
    }
    
    var item: MenuItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        quantityStepper.value = 1
        quantityLabel.text = "\(quantityStepper.value)"

        imageView.image = item.image
        nameLabel.text = item.name
        priceLabel.text = "\(item.price)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
