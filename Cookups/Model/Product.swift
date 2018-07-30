//
//  Product.swift
//  Cookups
//
//  Created by HF Shan on 7/27/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import Foundation
struct Product: Decodable{
    
    let id:          Int?
    let title:       String?
    let user:        String?
    let time:        String?
    let date:        String?
    let location:    String?
    let ratings:     String?
    let price:       String?
    let images:      String?
    let portions:    String?
    let category:    String?
    let remainings:  String?
    let likedByYou:  Bool?
    let description: String?
    
    init(id: Int = 0,title: String? = "User name",user: String? = "Temp String", time: String? = "Temp String", date: String? = "Temp String", location: String? = "Temp String", ratings: String? = "Temp String", price: String? = "Temp String", images: String? = "Temp String", portions: String? = "Temp String", category: String? = "Temp String", remainings: String? = "Temp String", likedByYou: Bool? = false, description: String? = "Temp String") {
        self.id          = id
        self.title       = title
        self.user        = user
        self.time        = time
        self.date        = date
        self.location    = location
        self.ratings     = ratings
        self.price       = price
        self.images      = images
        self.portions    = portions
        self.category    = category
        self.remainings  = remainings
        self.likedByYou  = likedByYou
        self.description = description
        
    }
}
