//
//  Product.swift
//  Cookups
//
//  Created by HF Shan on 7/27/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import Foundation
import UIKit

struct Product{
    
    let id:          Int?
    let userID:      Int?
    let filterID:    Int?
    let title:       String?
    // let userName:    String?
    // let userPhoto:   UIImage?
    let time:        String?
    let date:        String?
    let location:    String?
    let ratings:     String?
    let stars:       [UIImage]?
    let price:       Int?
    let images:      [UIImage]?
    let portions:    String?
    let category:    String?
    let remainings:  String?
    let likedByYou:  Bool?
    let description: String?
    let ratingsDescription: String?
    let liked:       UIImage?
    let maxPortions: Int?
    
    // User Info in Product
    // let user: User?
    
    init(id: Int = 0, userID: Int? = 0, filterID: Int = 0, title: String? = "Temp String",
         // userName: String? = "Temp String", userPhoto: UIImage? = UIImage(named: "profile"),
         time: String? = "Temp String", date: String? = "Temp String", location: String? = "Temp String", ratings: String? = "Temp String",
         
         stars: [UIImage] = [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_1")!,UIImage(named: "star_1")!, UIImage(named: "star_1")!],
         
         price:  Int? = 100, images: [UIImage]? = [UIImage(named: "CheeseBurger")!, UIImage(named: "CheeseBurger")!],
         portions: String? = "Temp String", category: String? = "Temp String", remainings: String? = "Temp String",
         likedByYou: Bool? = false,
         description: String? = "Temp String",
         ratingsDescription: String? = "Temp Ratings",
         liked: UIImage? = UIImage(named: "heart_red"),
         maxPortions: Int? = 1
         //user: User? = User()
        
        ) {
        
        self.id          = id
        self.userID      = userID
        self.filterID    = filterID
        self.title       = title
        //self.userName    = userName
        //self.userPhoto   = userPhoto
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
        self.ratingsDescription = ratingsDescription
        self.stars       = stars
        self.liked       = liked
        self.maxPortions = maxPortions
        //self.user        = user
    }
    
    
}
