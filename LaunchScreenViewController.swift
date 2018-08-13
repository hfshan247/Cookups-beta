//
//  LaunchScreenViewController.swift
//  Cookups
//
//  Created by HF Shan on 8/7/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class LaunchScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Settingup App Data
        ProductsController.initializeProducts()
        FilterController.initializeFilters()
        UsersController.initializeUsers()
        OrdersController.initializeOrders()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
