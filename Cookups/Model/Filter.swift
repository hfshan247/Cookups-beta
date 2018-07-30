//
//  Filter.swift
//  Cookups
//
//  Created by HF Shan on 7/27/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import Foundation
import UIKit

struct Filter {
    let id: Int?
    let title: String?
    let icon: UIImage?
    let backgroundColor: UIColor?
    let textColor: UIColor?
    let iconColor: UIColor?
    
    
    init(id: Int = 0, title: String = "No title", icon: UIImage = UIImage(named: "CheeseBurger")!, backgroundColor: UIColor = UIColor.white, textColor: UIColor = UIColor.black, iconColor: UIColor = UIColor.white) {
        
        self.id              = id
        self.title           = title
        self.icon            = icon
        self.backgroundColor = backgroundColor
        self.textColor       = textColor
        self.iconColor       = iconColor
        
    }
    
}


