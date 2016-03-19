//
//  DessertViewController.swift
//  Tablespace
//
//  Created by David Woodruff on 2016-03-18.
//  Copyright © 2016 tablespace. All rights reserved.
//

import UIKit

class DessertsViewController: MenuViewController {
    
    override func getMenuItems() {
        menuItems = MenuItemDB().getDesserts()
    }

}
