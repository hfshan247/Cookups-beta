//
//  UsersController.swift
//  Cookups
//
//  Created by HF Shan on 7/31/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import Foundation
import UIKit

class UsersController {
    static var users = [User]()
    
    init(){
        
    }
    
    static func geUsers() -> [User]{
        users = UserServer.users
        if(users.count == 0){
            initializeUsers()
        }
        
        return users
    }
    
   static func initializeUsers(){
    users.append(User(id: 0, userName: "Muhammad Hussain Farooq",userPhoto: UIImage(named: "profile"), location: "Islamabad", stars: [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_1")!,UIImage(named: "star_1")!, UIImage(named: "star_1")!] ))
    
    users.append(User(id: 2, userName: "Muhammad Murad Malik",userPhoto: UIImage(named: "profile"), location: "Islamabad", stars: [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_1")!,UIImage(named: "star_1")!, UIImage(named: "star_1")!] ))
    
    users.append(User(id: 3, userName: "Ehsan",userPhoto: UIImage(named: "profile"), location: "Islamabad", stars: [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_1")!,UIImage(named: "star_1")!, UIImage(named: "star_1")!] ))
    
    users.append(User(id: 4, userName: "Arsalan Khan",userPhoto: UIImage(named: "profile"), location: "Islamabad", stars: [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_1")!,UIImage(named: "star_1")!, UIImage(named: "star_1")!] ))
    
    users.append(User(id: 5, userName: "Pizza Hut",userPhoto: UIImage(named: "profile"), location: "Islamabad", stars: [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_1")!,UIImage(named: "star_1")!, UIImage(named: "star_1")!] ))
    
    users.append(User(id: 6, userName: "Ali Ahmad",userPhoto: UIImage(named: "profile"), location: "Islamabad", stars: [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_1")!,UIImage(named: "star_1")!, UIImage(named: "star_1")!] ))
    
    users.append(User(id: 7, userName: "Salman Ali",userPhoto: UIImage(named: "profile"), location: "Islamabad", stars: [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_1")!,UIImage(named: "star_1")!, UIImage(named: "star_1")!] ))
    
    users.append(User(id: 8, userName: "Muhammad Shahroz Sajjad",userPhoto: UIImage(named: "profile"), location: "Islamabad", stars: [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_1")!,UIImage(named: "star_1")!, UIImage(named: "star_1")!] ))
    
    users.append(User(id: 9, userName: "Huzaifa",userPhoto: UIImage(named: "profile"), location: "Islamabad", stars: [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_1")!,UIImage(named: "star_1")!, UIImage(named: "star_1")!] ))
    
    users.append(User(id: 10, userName: "Mini Mart Dhaba",userPhoto: UIImage(named: "profile"), location: "Islamabad", stars: [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_1")!,UIImage(named: "star_1")!, UIImage(named: "star_1")!] ))
    
   
    
    
    }
}
