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
    users.append(User(id: 0, userName: "Muhammad Hussain Farooq",userPhoto: UIImage(named: "profile"), location: "Sector H-12 Islamabad", stars: [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_1")!,UIImage(named: "star_1")!, UIImage(named: "star_1")!], ratings: "(50-100 Ratings)" ))

    users.append(User(id: 1, userName: "Adnan Ahmad",userPhoto: UIImage(named: "profile"), location: "Sector H-12 Islamabad", stars: [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_1")!,UIImage(named: "star_1")!, UIImage(named: "star_2")!], ratings: "(10-20 Ratings)" ))
    
    users.append(User(id: 2, userName: "Muhammad Murad Malik",userPhoto: UIImage(named: "User_2"), location: "Sector F-11 Islamabad", stars: [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_1")!,UIImage(named: "star_1")!, UIImage(named: "star_3")!] , ratings: "(30-50 Ratings)"))
    
    users.append(User(id: 3, userName: "Ehsan",userPhoto: UIImage(named: "User_3"), location: "Sector H-13", stars: [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_1")!,UIImage(named: "star_2")!, UIImage(named: "star_3")!], ratings: "(80-100 Ratings)"))
    
    users.append(User(id: 4, userName: "Arsalan Khan",userPhoto: UIImage(named: "User_4"), location: "Sector G-8 Islamabad", stars: [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_1")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!], ratings: "(500-1000 Ratings)" ))
    
    users.append(User(id: 5, userName: "Pizza Hut",userPhoto: UIImage(named: "User_5"), location: "Kallar Kahar", stars: [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_2")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!], ratings: "(500-1500 Ratings)" ))
    
    users.append(User(id: 6, userName: "Ali Ahmad",userPhoto: UIImage(named: "User_6"), location: "Lahore", stars: [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_1")!,UIImage(named: "star_1")!, UIImage(named: "star_1")!] , ratings: "(500-2000 Ratings)"))
    
    users.append(User(id: 7, userName: "Salman Ali",userPhoto: UIImage(named: "User_7"), location: "Faisalabad", stars: [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_1")!,UIImage(named: "star_1")!, UIImage(named: "star_1")!], ratings: "(10-20 Ratings)" ))
    
    users.append(User(id: 8, userName: "Muhammad Shahroz Sajjad",userPhoto: UIImage(named: "User_8"), location: "Multan", stars: [UIImage(named: "star_1")!, UIImage(named: "star_2")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!] , ratings: "(5-100 Ratings)"))
    
    users.append(User(id: 9, userName: "Huzaifa",userPhoto: UIImage(named: "User_9"), location: "Rawalpindi", stars: [UIImage(named: "star_1")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!] , ratings: "(5-10 Ratings)"))
    
    users.append(User(id: 10, userName: "Mini Mart Dhaba",userPhoto: UIImage(named: "User_10"), location: "Daman-e-Koh", stars: [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!], ratings: "(0-5 Ratings)" ))

    }
    
    static func addUser(user: User) -> Bool{
        users.append(user)
        return true
    }
    
    static func getUser(id: Int)->User{
        var tempUser: User = User()
        
        for user in users{
            if(user.id == id){
                tempUser = user
                break
            }
        }
        return tempUser
    }
    
}
