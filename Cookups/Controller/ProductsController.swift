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
        
        // Ingradients      Filter ID: 1
        
        products.append(Product(id:0,
                                userID: 0,
                                filterID:1,
                                title :"Almond Milk (Badam Milk)",
                                //userName: "Muhammad Hussain Farooq",
                                //userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM",
                                date: "Monday, May 23",
                                location: "Islamabad Sector H-12",
                                ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: 100,
                                
                                images: [UIImage(named: "AlmondMilk")!, UIImage(named:"BanavatiMakkhan")!,UIImage(named:"ChocolateChips")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true,
                                description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                                ratingsDescription: "(30 - 50 ratings)",
                                liked: UIImage(named: "heart_red"), maxPortions: 5))
        
        products.append(Product(id:1,
                                userID: 1,
                                filterID:1, title :"Banavati Makkhan",
//                                userName: "Muhammad Hussain Farooq",
//                                userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: 100,
                                
                                images: [ UIImage(named:"BanavatiMakkhan")!, UIImage(named: "AlmondMilk")!, UIImage(named:"ChocolateChips")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 10))
        
        products.append(Product(id:2,userID: 2, filterID:1, title :"Chocolate Chips",
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
            
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: 100,

                                images: [UIImage(named:"ChocolateChips")!, UIImage(named: "AlmondMilk")!, UIImage(named:"BanavatiMakkhan")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 15))


        products.append(Product(id:3, userID: 3, filterID:1, title :"Coconut Oil",
//                                userName: "Muhammad Hussain Farooq",
//                                userPhoto: UIImage(named: "profile"),
//
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: 100,

                                images: [UIImage(named:"CoconutOil")!, UIImage(named:"BanavatiMakkhan")!,UIImage(named:"ChocolateChips")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))

        products.append(Product(id:4, userID: 4, filterID:1, title :"Gold Leaves",
//                                userName: "Muhammad Hussain Farooq",
//                                userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: 100,

                                images: [UIImage(named: "GoldLeaves")!, UIImage(named:"BanavatiMakkhan")!,UIImage(named:"ChocolateChips")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))

        products.append(Product(id:5,userID: 5, filterID:1, title :"Hoisin Sauce",
//                                userName: "Muhammad Hussain Farooq",
//                                userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: 100,

                                images: [UIImage(named: "HoisinSauce")!, UIImage(named:"BanavatiMakkhan")!,UIImage(named:"ChocolateChips")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))

        products.append(Product(id:6,userID: 6, filterID:1, title :"Jelly",
//                                userName: "Muhammad Hussain Farooq",
//                                userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: 100,

                                images: [UIImage(named: "Jelly")!, UIImage(named:"BanavatiMakkhan")!,UIImage(named:"ChocolateChips")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))

        products.append(Product(id:7,userID: 7, filterID:1, title :"Jus",
//                                userName: "Muhammad Hussain Farooq",
//                                userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: 100,

                                images: [UIImage(named: "Jus")!, UIImage(named:"BanavatiMakkhan")!,UIImage(named:"ChocolateChips")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))

        products.append(Product(id:8,userID: 8, filterID:1, title :"Mayonnaise",
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: 100,

                                images: [UIImage(named: "Mayonnaise")!, UIImage(named:"BanavatiMakkhan")!,UIImage(named:"ChocolateChips")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))

        products.append(Product(id:9,userID: 9, filterID:1, title :"Tomato Puree",
                                
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: 100,

                                images: [UIImage(named: "TomatoPuree")!, UIImage(named:"BanavatiMakkhan")!,UIImage(named:"ChocolateChips")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))



        
        // Drinks           Filter ID: 2
        
        products.append(Product(id:10,userID: 10, filterID:2, title :"Black Coffee",
                                
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
            
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: 100,
                                
                                images: [UIImage(named:"Cocktail")!, UIImage(named: "BlackCoffee")!, UIImage(named:"Cider")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 10))
        
        products.append(Product(id:11,userID: 0, filterID:2, title :"Black Coffee)",
                                
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
            
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: 100,
                                
                                images: [UIImage(named: "BlackCoffee")!, UIImage(named:"Cider")!,UIImage(named:"Cocktail")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))
        

        products.append(Product(id:12,userID: 1, filterID:2, title :"Cider",
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: 100,

                                images: [ UIImage(named:"Cider")!, UIImage(named: "BlackCoffee")!, UIImage(named:"Cocktail")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))



        products.append(Product(id:13,userID: 2, filterID:2, title :"Crema)",
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: 100,

                                images: [UIImage(named: "Crema")!, UIImage(named:"Cider")!,UIImage(named:"Cocktail")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))

        products.append(Product(id:14,userID: 3, filterID:2, title :"Lemon Cola)",
                                
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: 100,

                                images: [UIImage(named: "LemonCola")!, UIImage(named:"Cider")!,UIImage(named:"Cocktail")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))

        
        
        // Chicken          Filter ID: 3
    
        products.append(Product(id:15,userID: 4, filterID:3, title :"Chicken Marsala",
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: 100,
                                
                                images: [UIImage(named:"ChickenMarsala")!, UIImage(named: "ChickenRiceApple")!, UIImage(named:"ChickenSandwichWithMeltedCheese")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))
        
        products.append(Product(id:16, userID: 5, filterID:3, title :"Chicken Rice Apple",
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: 100,
                                
                                images: [UIImage(named: "ChickenRiceApple")!, UIImage(named:"ChickenMarsala")!,  UIImage(named:"ChickenSandwichWithMeltedCheese")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))
        
        products.append(Product(id:17,userID: 6, filterID:3, title :"Chicken Sandwich With Melted Cheese",
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: 100,

                                images: [UIImage(named:"ChickenSandwichWithMeltedCheese")!, UIImage(named:"ChickenMarsala")!,
                                         UIImage(named: "ChickenRiceApple")! ],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))

        products.append(Product(id:18,userID: 7, filterID:3, title :"ChickenStirFried",
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: 100,

                                images: [UIImage(named:"ChickenStirFried")!, UIImage(named: "ChickenRiceApple")!, UIImage(named:"ChickenSandwichWithMeltedCheese")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))

        products.append(Product(id:19,userID: 8, filterID:3, title :"Chicken Stroganoff",
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: 100,

                                images: [UIImage(named:"ChickenStroganoff")!, UIImage(named: "ChickenRiceApple")!, UIImage(named:"ChickenSandwichWithMeltedCheese")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))

        products.append(Product(id:20,userID: 9, filterID:3, title :"Coconut Rice Chicken",
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: 100,

                                images: [UIImage(named:"CoconutRiceChicken")!, UIImage(named: "ChickenRiceApple")!, UIImage(named:"ChickenSandwichWithMeltedCheese")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))

        products.append(Product(id:21,userID: 10, filterID:3, title :"Curried Chicken",
                                
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
            
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: 100,

                                images: [UIImage(named:"CurriedChicken")!, UIImage(named: "ChickenRiceApple")!, UIImage(named:"ChickenSandwichWithMeltedCheese")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))

        products.append(Product(id:22,userID: 0, filterID:3, title :"Garlic Roast Chicken",
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: 100,

                                images: [UIImage(named:"GarlicRoastChicken")!, UIImage(named: "ChickenRiceApple")!, UIImage(named:"ChickenSandwichWithMeltedCheese")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))

        products.append(Product(id:23,userID: 1, filterID:3, title :"Grilled Chicken Parmesan",
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: 100,

                                images: [UIImage(named:"GrilledChickenParmesan")!, UIImage(named: "ChickenRiceApple")!, UIImage(named:"ChickenSandwichWithMeltedCheese")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))

        products.append(Product(id:24,userID: 2, filterID:3, title :"Individual Chicken Potpies",
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: 100,

                                images: [UIImage(named:"IndividualChickenPotpies")!, UIImage(named: "ChickenRiceApple")!, UIImage(named:"ChickenSandwichWithMeltedCheese")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))

        
        
        // Fish             Filter ID: 4
    
        products.append(Product(id:25,userID: 3, filterID:4, title :"Pomfret",
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: 100,
                                
                                images: [
                                    UIImage(named:"Pomfret")!,
                                    UIImage(named:"JelliedEels")!,
                                    UIImage(named: "Monkfish")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))
        
        products.append(Product(id:26,userID: 4, filterID:4, title :"Sword Fish",
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: 100,
                                
                                images: [UIImage(named:"SwordFish")!, UIImage(named: "Monkfish")!, UIImage(named:"Pomfret")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))
        
        products.append(Product(id:27,userID: 5, filterID:4, title :"Jellied Eels",
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: 100,

                                images: [UIImage(named:"JelliedEels")!, UIImage(named: "Monkfish")!, UIImage(named:"Pomfret")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))



        products.append(Product(id:28,userID: 6, filterID:4, title :"Monk Fish",
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: 100,

                                images: [UIImage(named: "Monkfish")!,UIImage(named:"JelliedEels")!,  UIImage(named:"Pomfret")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))
        

        
        // Pizza            Filter ID: 5
    
        products.append(Product(id:29,userID: 7, filterID:5, title :"Peppy Paneer",
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: 100,
                                
                                images: [UIImage(named:"PeppyPaneer")!, UIImage(named: "CheeseBarbequeChicken")!, UIImage(named:"CheesePepperoniPizza")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))
        
        products.append(Product(id:30,userID: 8, filterID:5, title :"Cheese Barbeque Chicken",
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: 100,
                                
                                images: [UIImage(named: "CheeseBarbequeChicken")!, UIImage(named:"PeppyPaneer")!,  UIImage(named:"CheesePepperoniPizza")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))
        
        products.append(Product(id:31,userID: 9, filterID:5, title :"Cheese Pepperoni Pizza",
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: 100,
                                
                                images: [UIImage(named:"CheesePepperoniPizza")!, UIImage(named:"PeppyPaneer")!,
                                    UIImage(named: "CheeseBarbequeChicken")!, ],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))
        
        products.append(Product(id:32,userID: 10, filterID:5, title :"Chicken Mexican RedWave Pizza",
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: 100,
                                
                                images: [UIImage(named:"ChickenMexicanRedWavePizza")!, UIImage(named: "CheeseBarbequeChicken")!, UIImage(named:"CheesePepperoniPizza")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))
        
        products.append(Product(id:33,userID: 0, filterID:5, title :"Double Cheese Pizza",
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: 100,
                                
                                images: [UIImage(named:"DoubleCheesePizza")!, UIImage(named: "CheeseBarbequeChicken")!, UIImage(named:"CheesePepperoniPizza")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))
        
        products.append(Product(id:34, userID: 1,filterID:5, title :"Gourmet Pizza",
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: 100,
                                
                                images: [UIImage(named:"GourmetPizza")!, UIImage(named: "CheeseBarbequeChicken")!, UIImage(named:"CheesePepperoniPizza")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))
        
        products.append(Product(id:35, userID: 2,filterID:5, title :"Margherita Pizza",
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: 100,
                                
                                images: [UIImage(named:"MargheritaPizza")!, UIImage(named: "CheeseBarbequeChicken")!, UIImage(named:"CheesePepperoniPizza")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))
        
        products.append(Product(id:36, userID: 3,filterID:5, title :"Meatzaa Pizza",
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: 100,
                                
                                images: [UIImage(named:"MeatzaaPizza")!, UIImage(named: "CheeseBarbequeChicken")!, UIImage(named:"CheesePepperoniPizza")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))
        
        products.append(Product(id:37,userID: 4, filterID:5, title :"Mexican Green Wave Pizza",
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: 100,
                                
                                images: [UIImage(named:"MexicanGreenWavePizza")!, UIImage(named: "CheeseBarbequeChicken")!, UIImage(named:"CheesePepperoniPizza")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))
        
        products.append(Product(id:38,userID: 5, filterID:5, title :"Peppy Paneer",
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: 100,
                                
                                images: [UIImage(named:"PeppyPaneer")!, UIImage(named: "CheeseBarbequeChicken")!, UIImage(named:"CheesePepperoniPizza")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))
        
        // Burgers          Filter ID: 6
        
        
        products.append(Product(id:39, userID: 6,filterID:6,  title :"Cheese Burger Burger",
//                                userName: "Muhammad Hussain Farooq", userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad, Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_2")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: 500,
                                
                                images: [UIImage(named: "CheeseBurger")!, UIImage(named: "HolsinBurger")!, UIImage(named: "BaconCheese")!],
                                
                                portions: "1:4", category: "Pakistani", remainings: "1", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))
        
        products.append(Product(id:40,userID: 7, filterID:6, title :"Bacon Cheese Burger",
//                                userName: "Murad Malik", userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad, Sector F-11", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_1")!,UIImage(named: "star_1")!, UIImage(named: "star_3")!],
                                
                                price: 400,
                                
                                images: [UIImage(named: "BaconCheese")!, UIImage(named: "HolsinBurger")!, UIImage(named: "BaconCheese")!],
                                
                                portions: "1:4", category: "Pakistani", remainings: "2", likedByYou: false, description: "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_empty"), maxPortions: 5))
        
        products.append(Product(id:41,userID: 8, filterID:6, title :"Caramelized Onion Burger",
//                                userName: "Ehsan",  userPhoto: UIImage(named: "profile"),
            
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad,  Sector F-9", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_1")!,UIImage(named: "star_1")!, UIImage(named: "star_1")!],
                                
                                price: 300,
                                
                                images: [UIImage(named: "CaramelizedOnion")!, UIImage(named: "HolsinBurger")!, UIImage(named: "BaconCheese")!],
                                
                                portions: "1:4", category: "Pakistani", remainings: "3", likedByYou: true, description: "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))
        
        products.append(Product(id:42,userID: 9, filterID:6, title :"Juicy Lucy Burger",
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector G-9", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_1")!,UIImage(named: "star_1")!, UIImage(named: "star_1")!],
                                
                                price: 200,
                                
                                images: [UIImage(named: "JuicyLucy")!, UIImage(named: "HolsinBurger")!, UIImage(named: "BaconCheese")!],
                                
                                portions: "1:4", category: "Indian", remainings: "4", likedByYou: false, description: "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_rempty"), maxPortions: 5))
        
        products.append(Product(id:43, userID: 10,filterID:6, title :"English Cheddar Burger",
//                                userName: "Arsalan Khan",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad, Monoment", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_2")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: 500,
                                
                                images: [UIImage(named: "EnglishCheddar")!, UIImage(named: "HolsinBurger")!, UIImage(named: "BaconCheese")!],
                                
                                portions: "1:4", category: "Pakistani", remainings: "5", likedByYou: true, description: "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))
        
        products.append(Product(id:44,userID: 0, filterID:6, title :"Holsin Burger Burger",
//                                userName: "Pizza Hut",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad, Atwar Bazar", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: 400,
                                
                                images: [UIImage(named: "HolsinBurger")!, UIImage(named: "HolsinBurger")!, UIImage(named: "BaconCheese")!],
                                
                                portions: "1:4", category: "Chinese", remainings: "6", likedByYou: false, description: "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_empty"), maxPortions: 5))
        
        products.append(Product(id:45,userID: 1, filterID:6, title :"Chipotle Corn Burger",
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad, I-10", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_1")!, UIImage(named: "star_2")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: 300,
                                
                                images: [UIImage(named: "ChipotleCorn")!, UIImage(named: "HolsinBurger")!, UIImage(named: "BaconCheese")!],
                                
                                portions: "1:4", category: "Pakistani", remainings: "7", likedByYou: true, description: "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))
        
        products.append(Product(id:46,userID: 2, filterID:6, title :"Thai Pork Burger",
//                                userName: "Ali Ahmad",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_1")!,UIImage(named: "star_1")!, UIImage(named: "star_1")!],
                                
                                price: 200,
                                
                                images: [UIImage(named: "ThaiPork")!, UIImage(named: "HolsinBurger")!, UIImage(named: "BaconCheese")!],
                                
                                portions: "1:4", category: "Pakistani", remainings: "8", likedByYou: false, description: "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_empty"), maxPortions: 5) )
        
        products.append(Product(id:47, userID: 3,filterID:6, title :"Creole Crab Burger",
//                                userName: "Salman Ali",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_1")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: 500,
                                
                                images: [UIImage(named: "CreoleCrab")!, UIImage(named: "HolsinBurger")!, UIImage(named: "BaconCheese")!],
                                
                                portions: "1:4", category: "Chinese", remainings: "9", likedByYou: true, description: "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))
        
        products.append(Product(id:48, userID: 4,filterID:6, title :"Middle Eastern Burger",
//                                userName: "Muhammad Shahroz Sajjad",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "Ratings",
                                
                                stars:  [UIImage(named: "star_2")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: 400,
                                
                                images: [UIImage(named: "MiddleEastern")!, UIImage(named: "HolsinBurger")!, UIImage(named: "BaconCheese")!],
                                
                                portions: "1:4", category: "Itallian", remainings: "10", likedByYou: false, description: "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_empty"), maxPortions: 5))
        
        products.append(Product(id:49, userID: 5, filterID:6, title :"Saltimbocca Burger",
//                                userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"),
                                time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: 100,
                                
                                images: [UIImage(named: "Saltimbocca")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "No Description", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red"), maxPortions: 5))
        
    }
    
    static func getProducts(filter: Filter) -> [Product]{
        
        var temp_products: [Product] = [Product]()
        
        if (filter.id == 0){
            return products
        }
        
        for p in products{
            if(p.filterID == filter.id){
                temp_products.append(p)
            }
        }
        
        return temp_products
    }
    
    static func getProducts(user: User) -> [Product]{
        
        var temp_products: [Product] = [Product]()
        
        for p in products{
            if(p.userID == user.id){
                temp_products.append(p)
            }
        }
        
        return temp_products
    }
    
    static func getProduct(productId: Int) -> Product{
        var temp_product: Product = Product()
        
        for p in products{
            if(p.id == productId){
                return p
            }
        }
        
        return temp_product
    }
    
    static func getDataFromServer(){
        // Implementation Here
        
    }
    
}



