//
//  MenuTabBarController.swift
//  Tablespace
//
//  Created by David Woodruff on 2016-03-19.
//  Copyright © 2016 tablespace. All rights reserved.
//

import UIKit

class MenuTabBarController: UITabBarController {

    
    @IBAction func willCallServer(sender: AnyObject) {
        let alertView = UIAlertController(title: "Call server", message: "more water pls", preferredStyle: .Alert)
        alertView.addAction(UIAlertAction(title: "Yes", style: .Default, handler:
            {(alert: UIAlertAction!) in self.callServer()}))
        alertView.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: nil))

        presentViewController(alertView, animated: true, completion: nil)
    }
    
    @IBAction func willViewOrder(sender: AnyObject) {
        if order.items.isEmpty {
            let alertView = UIAlertController(title: "No items!", message: "Add some food first", preferredStyle: .Alert)
            alertView.addAction(UIAlertAction(title: "Ok", style: .Default, handler: nil))
            presentViewController(alertView, animated: true, completion: nil)
        } else {
            viewOrder()
        }
        
    }
    
    var order: Order!
    
    override func viewDidLoad() {
        order = Order()
    }

    func callServer() {
        //call server code here
        print("Server called")
    }
    
    func viewOrder() {
        performSegueWithIdentifier("ModalViewOrder", sender: order)
    }
    
    func addItemToOrder(item: OrderItem) {
        order.addItem(item)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ModalViewOrder" {
            if let dvc = segue.destinationViewController as? OrderViewController {
                dvc.order = sender as? Order
            }
        }
    }
}
