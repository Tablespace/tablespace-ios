//
//  MenuItemViewController.swift
//  Tablespace
//
//  Created by David Woodruff on 2016-03-18.
//  Copyright © 2016 tablespace. All rights reserved.
//

import UIKit

class MenuItemViewController: UIViewController {
    
    @IBAction func backAction(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var quantityLabel: UILabel!
    @IBOutlet weak var quantityStepper: UIStepper!
    
    @IBOutlet weak var descriptionTextView: UITextView!
    
    @IBOutlet weak var modificationsTextView: UITextView!
    
    @IBOutlet weak var infoView: UIView!
    
    @IBAction func quantityChanged(sender: AnyObject) {
        let quantity = Int(floor(quantityStepper.value))
        quantityLabel.text = "\(quantity)"
    }
    
    var item: MenuItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        quantityStepper.value = 1
        
        let quantity = Int(floor(quantityStepper.value))
        quantityLabel.text = "\(quantity)"

        imageView.image = item.image
        nameLabel.text = item.name
        
        priceLabel.text = "$\(item.price)"
    }


    @IBAction func addToOrder(sender: AnyObject) {
        let orderItem = OrderItem(menuItem: item, quantity: Int(floor(quantityStepper.value)))
        performSegueWithIdentifier("UnwindToMenu", sender: orderItem)
    }

//    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
//        let touch = touches.first as UITouch!
//        let point = touch.locationInView(self.view)
//        if !infoView.frame.contains(point) {
//            performSegueWithIdentifier("UnwindToMenu", sender: nil)
//        }
//    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "UnwindToMenu" {
            if let newItem = sender as? OrderItem {
                if let dvc = segue.destinationViewController as? MenuViewController {
                    dvc.addItemToOrder(newItem)
                }
            }
        }
    }
    
    
}
