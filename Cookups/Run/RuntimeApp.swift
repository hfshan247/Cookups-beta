//
//  RuntimeApp.swift
//  Cookups
//
//  Created by HF Shan on 7/31/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import Foundation
import UIKit

class RuntimeApp{
    static var selectedFilter: Filter = Filter()
    static var product: Product = Product()
    static var placeOrder: Order = Order()
    
    static func startApp(){
    // Initialize orders:
    OrdersController.initializeOrders()
    }
    
}
