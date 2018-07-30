//
//  ProductsController.swift
//  Cookups
//
//  Created by HF Shan on 7/27/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import Foundation
import UIKit

class ProductsController{
    static var products = [Product]()
    
    init() {
        
    }
    
    static func getProducts() -> [Product]{
        products = ProductServer.products
        if(products.count == 0){
            initializeProducts()
        }
        
        return products
    }
    
    static func initializeProducts(){
        products.append(Product(id:0, title :"Cheese Burger Burger", userName: "Muhammad Hussain Farooq", userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad, Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_2")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 500",
                                
                                images: [UIImage(named: "CheeseBurger")!, UIImage(named: "HolsinBurger")!, UIImage(named: "BaconCheese")!],
                                
                                portions: "1:4", category: "Pakistani", remainings: "1", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."))
        
        products.append(Product(id:1, title :"Bacon Cheese Burger", userName: "Murad Malik", userPhoto: UIImage(named: "profile"),  time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad, Sector F-11", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_1")!,UIImage(named: "star_1")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 400",
                                
                                images: [UIImage(named: "BaconCheese")!, UIImage(named: "HolsinBurger")!, UIImage(named: "BaconCheese")!],
                                
                                portions: "1:4", category: "Pakistani", remainings: "2", likedByYou: false, description: "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."))
        
        products.append(Product(id:2, title :"Caramelized Onion Burger", userName: "Ehsan",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad,  Sector F-9", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_1")!,UIImage(named: "star_1")!, UIImage(named: "star_1")!],
                                
                                price: "Rs. 300",
                                
                                images: [UIImage(named: "CaramelizedOnion")!, UIImage(named: "HolsinBurger")!, UIImage(named: "BaconCheese")!],
                                
                                portions: "1:4", category: "Pakistani", remainings: "3", likedByYou: true, description: "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."))
        
        products.append(Product(id:3, title :"Juicy Lucy Burger", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector G-9", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_1")!,UIImage(named: "star_1")!, UIImage(named: "star_1")!],
                                
                                price: "Rs. 200",
                                
                                images: [UIImage(named: "JuicyLucy")!, UIImage(named: "HolsinBurger")!, UIImage(named: "BaconCheese")!],
                                
                                portions: "1:4", category: "Indian", remainings: "4", likedByYou: false, description: "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."))
        
        products.append(Product(id:4, title :"English Cheddar Burger", userName: "Arsalan Khan",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad, Monoment", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_2")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 500",
                                
                                images: [UIImage(named: "EnglishCheddar")!, UIImage(named: "HolsinBurger")!, UIImage(named: "BaconCheese")!],
                                
                                portions: "1:4", category: "Pakistani", remainings: "5", likedByYou: true, description: "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."))
        
        products.append(Product(id:5, title :"Holsin Burger Burger", userName: "Pizza Hut",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad, Atwar Bazar", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 400",
                                
                                images: [UIImage(named: "HolsinBurger")!, UIImage(named: "HolsinBurger")!, UIImage(named: "BaconCheese")!],
                                
                                portions: "1:4", category: "Chinese", remainings: "6", likedByYou: false, description: "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."))
        
        products.append(Product(id:6, title :"Chipotle Corn Burger", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad, I-10", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_1")!, UIImage(named: "star_2")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 300",
                                
                                images: [UIImage(named: "ChipotleCorn")!, UIImage(named: "HolsinBurger")!, UIImage(named: "BaconCheese")!],
                                
                                portions: "1:4", category: "Pakistani", remainings: "7", likedByYou: true, description: "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."))
        
        products.append(Product(id:7, title :"Thai Pork Burger", userName: "Ali Ahmad",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_1")!,UIImage(named: "star_1")!, UIImage(named: "star_1")!],
                                
                                price: "Rs. 200",
                                
                                images: [UIImage(named: "ThaiPork")!, UIImage(named: "HolsinBurger")!, UIImage(named: "BaconCheese")!],
                                
                                portions: "1:4", category: "Pakistani", remainings: "8", likedByYou: false, description: "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."))
        
        products.append(Product(id:8, title :"Creole Crab Burger", userName: "Salman Ali",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_1")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 500",
                                
                                images: [UIImage(named: "CreoleCrab")!, UIImage(named: "HolsinBurger")!, UIImage(named: "BaconCheese")!],
                                
                                portions: "1:4", category: "Chinese", remainings: "9", likedByYou: true, description: "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."))
        
        products.append(Product(id:9, title :"Middle Eastern Burger", userName: "Muhammad Shahroz Sajjad",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "Ratings",
                                
                                stars:  [UIImage(named: "star_2")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 400",
                                
                                images: [UIImage(named: "MiddleEastern")!, UIImage(named: "HolsinBurger")!, UIImage(named: "BaconCheese")!],
                                
                                portions: "1:4", category: "Itallian", remainings: "10", likedByYou: false, description: "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."))
        
        products.append(Product(id:10, title :"Saltimbocca Burger", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 100",
                                
                                images: [UIImage(named: "Saltimbocca")!, UIImage(named: "HolsinBurger")!, UIImage(named: "BaconCheese")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "No Description"))
        
    }
    
    static func getDataFromServer(){
        // Implementation Here
        
    }
    
}



