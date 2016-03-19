//
//  OrderViewController.swift
//  Tablespace
//
//  Created by David Woodruff on 2016-03-18.
//  Copyright © 2016 tablespace. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var gstLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBAction func backAction(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func willSendOrder(sender: AnyObject) {
        order.sendToKitchen()
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    var order: Order!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.registerNib(UINib(nibName: "OrderItemCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        setGSTAndTotal()
    }
    
    func setGSTAndTotal() {
        gstLabel.text = "$\(NSString(format: "%.02f", order.gst))"
        totalLabel.text = "$\(NSString(format: "%.02f", order.orderTotal))"
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! OrderItemCell
        cell.item = order.items[indexPath.row]
        cell.delegate = self
        cell.contentView.superview?.clipsToBounds = true
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return order.items.count
    }
    
    func removeItemFromOrder(item: OrderItem) {
        order.removeItem(item)
        tableView.reloadData()
    }

}
