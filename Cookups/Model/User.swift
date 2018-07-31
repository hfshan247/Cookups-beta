//
//  User.swift
//  Cookups
//
//  Created by HF Shan on 7/31/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import Foundation
import UIKit

struct User{
    let id: Int?
    let userName:  String?
    let userPhoto: UIImage?
    let stars:     [UIImage]?
    let location:  String?
    let ratings:   String?
    
    
    init(id: Int = 0, userName: String? = "Temp String", userPhoto: UIImage? = UIImage(named: "profile"), location: String? = "Temp String", stars: [UIImage] = [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_1")!,UIImage(named: "star_1")!, UIImage(named: "star_1")!], ratings: String? = "Temp Ratings") {
        
        self.id          = id
        self.userName    = userName
         self.userPhoto  = userPhoto
        self.location    = location
        self.ratings     = ratings
        self.stars       = stars
        
    }
}
