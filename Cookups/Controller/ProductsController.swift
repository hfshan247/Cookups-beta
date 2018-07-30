//
//  ProductsController.swift
//  Cookups
//
//  Created by HF Shan on 7/27/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import Foundation

class ProductsController{
    static var products = [Product]()
    
    init() {
        
    }
    static func initializeProducts(){
        products.append(Product(id:0))
        products.append(Product(id:1))
        products.append(Product(id:2))
        products.append(Product(id:3))
        products.append(Product(id:4))
        products.append(Product(id:5))
        products.append(Product(id:6))
        products.append(Product(id:7))
        products.append(Product(id:8))
        products.append(Product(id:9))
        products.append(Product(id:10))
        
    }
    
}



