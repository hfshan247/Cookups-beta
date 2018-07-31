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
        
        products.append(Product(id:0, filterID:1, title :"Almond Milk (Badam Milk)", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 100",
                                
                                images: [UIImage(named: "AlmondMilk")!, UIImage(named:"BanavatiMakkhan")!,UIImage(named:"ChocolateChips")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))
        
        products.append(Product(id:0, filterID:1, title :"Banavati Makkhan", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 100",
                                
                                images: [ UIImage(named:"BanavatiMakkhan")!, UIImage(named: "AlmondMilk")!, UIImage(named:"ChocolateChips")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))
        
        products.append(Product(id:0, filterID:1, title :"Chocolate Chips", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: "Rs. 100",

                                images: [UIImage(named:"ChocolateChips")!, UIImage(named: "AlmondMilk")!, UIImage(named:"BanavatiMakkhan")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))


        products.append(Product(id:0, filterID:1, title :"Coconut Oil", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: "Rs. 100",

                                images: [UIImage(named:"CoconutOil")!, UIImage(named:"BanavatiMakkhan")!,UIImage(named:"ChocolateChips")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))

        products.append(Product(id:0, filterID:1, title :"Gold Leaves", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: "Rs. 100",

                                images: [UIImage(named: "GoldLeaves")!, UIImage(named:"BanavatiMakkhan")!,UIImage(named:"ChocolateChips")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))

        products.append(Product(id:0, filterID:1, title :"Hoisin Sauce", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: "Rs. 100",

                                images: [UIImage(named: "HoisinSauce")!, UIImage(named:"BanavatiMakkhan")!,UIImage(named:"ChocolateChips")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))

        products.append(Product(id:0, filterID:1, title :"Jelly", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: "Rs. 100",

                                images: [UIImage(named: "Jelly")!, UIImage(named:"BanavatiMakkhan")!,UIImage(named:"ChocolateChips")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))

        products.append(Product(id:0, filterID:1, title :"Jus", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: "Rs. 100",

                                images: [UIImage(named: "Jus")!, UIImage(named:"BanavatiMakkhan")!,UIImage(named:"ChocolateChips")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))

        products.append(Product(id:0, filterID:1, title :"Mayonnaise", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: "Rs. 100",

                                images: [UIImage(named: "Mayonnaise")!, UIImage(named:"BanavatiMakkhan")!,UIImage(named:"ChocolateChips")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))

        products.append(Product(id:0, filterID:1, title :"Tomato Puree", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: "Rs. 100",

                                images: [UIImage(named: "TomatoPuree")!, UIImage(named:"BanavatiMakkhan")!,UIImage(named:"ChocolateChips")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))



        
        // Drinks           Filter ID: 2
        
        products.append(Product(id:0, filterID:2, title :"Black Coffee", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 100",
                                
                                images: [UIImage(named:"Cocktail")!, UIImage(named: "BlackCoffee")!, UIImage(named:"Cider")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))
        
        products.append(Product(id:0, filterID:2, title :"Black Coffee)", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 100",
                                
                                images: [UIImage(named: "BlackCoffee")!, UIImage(named:"Cider")!,UIImage(named:"Cocktail")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))
        

        products.append(Product(id:0, filterID:2, title :"Cider", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: "Rs. 100",

                                images: [ UIImage(named:"Cider")!, UIImage(named: "BlackCoffee")!, UIImage(named:"Cocktail")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))



        products.append(Product(id:0, filterID:2, title :"Crema)", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: "Rs. 100",

                                images: [UIImage(named: "Crema")!, UIImage(named:"Cider")!,UIImage(named:"Cocktail")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))

        products.append(Product(id:0, filterID:2, title :"Lemon Cola)", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: "Rs. 100",

                                images: [UIImage(named: "LemonCola")!, UIImage(named:"Cider")!,UIImage(named:"Cocktail")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))

        
        
        // Chicken          Filter ID: 3
    
        products.append(Product(id:0, filterID:3, title :"Chicken Marsala", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 100",
                                
                                images: [UIImage(named:"ChickenMarsala")!, UIImage(named: "ChickenRiceApple")!, UIImage(named:"ChickenSandwichWithMeltedCheese")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))
        
        products.append(Product(id:0, filterID:3, title :"Chicken Rice Apple", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 100",
                                
                                images: [UIImage(named: "ChickenRiceApple")!, UIImage(named:"ChickenMarsala")!,  UIImage(named:"ChickenSandwichWithMeltedCheese")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))
        
        products.append(Product(id:0, filterID:3, title :"Chicken Sandwich With Melted Cheese", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: "Rs. 100",

                                images: [UIImage(named:"ChickenSandwichWithMeltedCheese")!, UIImage(named:"ChickenMarsala")!,
                                         UIImage(named: "ChickenRiceApple")! ],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))

        products.append(Product(id:0, filterID:3, title :"ChickenStirFried", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: "Rs. 100",

                                images: [UIImage(named:"ChickenStirFried")!, UIImage(named: "ChickenRiceApple")!, UIImage(named:"ChickenSandwichWithMeltedCheese")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))

        products.append(Product(id:0, filterID:3, title :"ChickenStroganoff", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: "Rs. 100",

                                images: [UIImage(named:"ChickenStroganoff")!, UIImage(named: "ChickenRiceApple")!, UIImage(named:"ChickenSandwichWithMeltedCheese")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))

        products.append(Product(id:0, filterID:3, title :"CoconutRiceChicken", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: "Rs. 100",

                                images: [UIImage(named:"CoconutRiceChicken")!, UIImage(named: "ChickenRiceApple")!, UIImage(named:"ChickenSandwichWithMeltedCheese")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))

        products.append(Product(id:0, filterID:3, title :"CurriedChicken", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: "Rs. 100",

                                images: [UIImage(named:"CurriedChicken")!, UIImage(named: "ChickenRiceApple")!, UIImage(named:"ChickenSandwichWithMeltedCheese")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))

        products.append(Product(id:0, filterID:3, title :"GarlicRoastChicken", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: "Rs. 100",

                                images: [UIImage(named:"GarlicRoastChicken")!, UIImage(named: "ChickenRiceApple")!, UIImage(named:"ChickenSandwichWithMeltedCheese")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))

        products.append(Product(id:0, filterID:3, title :"GrilledChickenParmesan", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: "Rs. 100",

                                images: [UIImage(named:"GrilledChickenParmesan")!, UIImage(named: "ChickenRiceApple")!, UIImage(named:"ChickenSandwichWithMeltedCheese")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))

        products.append(Product(id:0, filterID:3, title :"IndividualChickenPotpies", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: "Rs. 100",

                                images: [UIImage(named:"IndividualChickenPotpies")!, UIImage(named: "ChickenRiceApple")!, UIImage(named:"ChickenSandwichWithMeltedCheese")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))

        
        
        // Fish             Filter ID: 4
    
        products.append(Product(id:0, filterID:4, title :"Pomfret", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 100",
                                
                                images: [
                                    UIImage(named:"Pomfret")!,
                                    UIImage(named:"JelliedEels")!,
                                    UIImage(named: "Monkfish")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))
        
        products.append(Product(id:0, filterID:4, title :"Sword Fish", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 100",
                                
                                images: [UIImage(named:"SwordFish")!, UIImage(named: "Monkfish")!, UIImage(named:"Pomfret")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))
        
        products.append(Product(id:0, filterID:4, title :"Jellied Eels", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: "Rs. 100",

                                images: [UIImage(named:"JelliedEels")!, UIImage(named: "Monkfish")!, UIImage(named:"Pomfret")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))



        products.append(Product(id:0, filterID:4, title :"Monkfish", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",

                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],

                                price: "Rs. 100",

                                images: [UIImage(named: "Monkfish")!,UIImage(named:"JelliedEels")!,  UIImage(named:"Pomfret")!],

                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))
        

        
        // Pizza            Filter ID: 5
    
        products.append(Product(id:0, filterID:5, title :"Peppy Paneer", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 100",
                                
                                images: [UIImage(named:"PeppyPaneer")!, UIImage(named: "CheeseBarbequeChicken")!, UIImage(named:"CheesePepperoniPizza")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))
        
        products.append(Product(id:0, filterID:5, title :"Cheese Barbeque Chicken", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 100",
                                
                                images: [UIImage(named: "CheeseBarbequeChicken")!, UIImage(named:"PeppyPaneer")!,  UIImage(named:"CheesePepperoniPizza")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))
        
        products.append(Product(id:0, filterID:5, title :"Cheese Pepperoni Pizza", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 100",
                                
                                images: [UIImage(named:"CheesePepperoniPizza")!, UIImage(named:"PeppyPaneer")!,
                                    UIImage(named: "CheeseBarbequeChicken")!, ],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))
        
        products.append(Product(id:0, filterID:5, title :"ChickenMexicanRedWavePizza", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 100",
                                
                                images: [UIImage(named:"ChickenMexicanRedWavePizza")!, UIImage(named: "CheeseBarbequeChicken")!, UIImage(named:"CheesePepperoniPizza")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))
        
        products.append(Product(id:0, filterID:5, title :"DoubleCheesePizza", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 100",
                                
                                images: [UIImage(named:"DoubleCheesePizza")!, UIImage(named: "CheeseBarbequeChicken")!, UIImage(named:"CheesePepperoniPizza")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))
        
        products.append(Product(id:0, filterID:5, title :"GourmetPizza", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 100",
                                
                                images: [UIImage(named:"GourmetPizza")!, UIImage(named: "CheeseBarbequeChicken")!, UIImage(named:"CheesePepperoniPizza")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))
        
        products.append(Product(id:0, filterID:5, title :"MargheritaPizza", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 100",
                                
                                images: [UIImage(named:"MargheritaPizza")!, UIImage(named: "CheeseBarbequeChicken")!, UIImage(named:"CheesePepperoniPizza")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))
        
        products.append(Product(id:0, filterID:5, title :"MeatzaaPizza", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 100",
                                
                                images: [UIImage(named:"MeatzaaPizza")!, UIImage(named: "CheeseBarbequeChicken")!, UIImage(named:"CheesePepperoniPizza")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))
        
        products.append(Product(id:0, filterID:5, title :"MexicanGreenWavePizza", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 100",
                                
                                images: [UIImage(named:"MexicanGreenWavePizza")!, UIImage(named: "CheeseBarbequeChicken")!, UIImage(named:"CheesePepperoniPizza")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))
        
        products.append(Product(id:0, filterID:5, title :"PeppyPaneer", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 100",
                                
                                images: [UIImage(named:"PeppyPaneer")!, UIImage(named: "CheeseBarbequeChicken")!, UIImage(named:"CheesePepperoniPizza")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))
        
        // Burgers          Filter ID: 6
        
        
        products.append(Product(id:0, filterID:6,  title :"Cheese Burger Burger", userName: "Muhammad Hussain Farooq", userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad, Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_2")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 500",
                                
                                images: [UIImage(named: "CheeseBurger")!, UIImage(named: "HolsinBurger")!, UIImage(named: "BaconCheese")!],
                                
                                portions: "1:4", category: "Pakistani", remainings: "1", likedByYou: true, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))
        
        products.append(Product(id:1, filterID:6, title :"Bacon Cheese Burger", userName: "Murad Malik", userPhoto: UIImage(named: "profile"),  time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad, Sector F-11", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_1")!,UIImage(named: "star_1")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 400",
                                
                                images: [UIImage(named: "BaconCheese")!, UIImage(named: "HolsinBurger")!, UIImage(named: "BaconCheese")!],
                                
                                portions: "1:4", category: "Pakistani", remainings: "2", likedByYou: false, description: "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_empty")))
        
        products.append(Product(id:2, filterID:6, title :"Caramelized Onion Burger", userName: "Ehsan",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad,  Sector F-9", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_1")!,UIImage(named: "star_1")!, UIImage(named: "star_1")!],
                                
                                price: "Rs. 300",
                                
                                images: [UIImage(named: "CaramelizedOnion")!, UIImage(named: "HolsinBurger")!, UIImage(named: "BaconCheese")!],
                                
                                portions: "1:4", category: "Pakistani", remainings: "3", likedByYou: true, description: "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))
        
        products.append(Product(id:3, filterID:6, title :"Juicy Lucy Burger", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector G-9", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_1")!,UIImage(named: "star_1")!, UIImage(named: "star_1")!],
                                
                                price: "Rs. 200",
                                
                                images: [UIImage(named: "JuicyLucy")!, UIImage(named: "HolsinBurger")!, UIImage(named: "BaconCheese")!],
                                
                                portions: "1:4", category: "Indian", remainings: "4", likedByYou: false, description: "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_rempty")))
        
        products.append(Product(id:4, filterID:6, title :"English Cheddar Burger", userName: "Arsalan Khan",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad, Monoment", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_2")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 500",
                                
                                images: [UIImage(named: "EnglishCheddar")!, UIImage(named: "HolsinBurger")!, UIImage(named: "BaconCheese")!],
                                
                                portions: "1:4", category: "Pakistani", remainings: "5", likedByYou: true, description: "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))
        
        products.append(Product(id:5, filterID:6, title :"Holsin Burger Burger", userName: "Pizza Hut",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad, Atwar Bazar", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 400",
                                
                                images: [UIImage(named: "HolsinBurger")!, UIImage(named: "HolsinBurger")!, UIImage(named: "BaconCheese")!],
                                
                                portions: "1:4", category: "Chinese", remainings: "6", likedByYou: false, description: "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_empty")))
        
        products.append(Product(id:6, filterID:6, title :"Chipotle Corn Burger", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad, I-10", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_1")!, UIImage(named: "star_2")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 300",
                                
                                images: [UIImage(named: "ChipotleCorn")!, UIImage(named: "HolsinBurger")!, UIImage(named: "BaconCheese")!],
                                
                                portions: "1:4", category: "Pakistani", remainings: "7", likedByYou: true, description: "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))
        
        products.append(Product(id:7, filterID:6, title :"Thai Pork Burger", userName: "Ali Ahmad",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_1")!, UIImage(named: "star_1")!,UIImage(named: "star_1")!,UIImage(named: "star_1")!, UIImage(named: "star_1")!],
                                
                                price: "Rs. 200",
                                
                                images: [UIImage(named: "ThaiPork")!, UIImage(named: "HolsinBurger")!, UIImage(named: "BaconCheese")!],
                                
                                portions: "1:4", category: "Pakistani", remainings: "8", likedByYou: false, description: "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_empty")) )
        
        products.append(Product(id:8, filterID:6, title :"Creole Crab Burger", userName: "Salman Ali",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_1")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 500",
                                
                                images: [UIImage(named: "CreoleCrab")!, UIImage(named: "HolsinBurger")!, UIImage(named: "BaconCheese")!],
                                
                                portions: "1:4", category: "Chinese", remainings: "9", likedByYou: true, description: "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))
        
        products.append(Product(id:9, filterID:6, title :"Middle Eastern Burger", userName: "Muhammad Shahroz Sajjad",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "Ratings",
                                
                                stars:  [UIImage(named: "star_2")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 400",
                                
                                images: [UIImage(named: "MiddleEastern")!, UIImage(named: "HolsinBurger")!, UIImage(named: "BaconCheese")!],
                                
                                portions: "1:4", category: "Itallian", remainings: "10", likedByYou: false, description: "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_empty")))
        
        products.append(Product(id:10, filterID:6, title :"Saltimbocca Burger", userName: "Muhammad Hussain Farooq",  userPhoto: UIImage(named: "profile"), time: "11:00 AM - 5:00 PM", date: "Monday, May 23", location: "Islamabad Sector H-12", ratings: "(30 - 50 ratings)",
                                
                                stars:  [UIImage(named: "star_3")!, UIImage(named: "star_3")!,UIImage(named: "star_3")!,UIImage(named: "star_3")!, UIImage(named: "star_3")!],
                                
                                price: "Rs. 100",
                                
                                images: [UIImage(named: "Saltimbocca")!],
                                
                                portions: "1:4", category: "Bangali", remainings: "10", likedByYou: true, description: "No Description", ratingsDescription: "(30 - 50 ratings)", liked: UIImage(named: "heart_red")))
        
    }
    
    static func getDataFromServer(){
        // Implementation Here
        
    }
    
}



