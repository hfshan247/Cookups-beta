//
//  FilterController.swift
//  Cookups
//
//  Created by HF Shan on 7/27/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import Foundation
import UIKit

class FilterController{
    static var filters = [Filter]()
    
    init() {
        
    }
    
    static func getFilters() -> [Filter]{
        filters = FilterServer.filters
        if(filters.count == 0){
            initializeFilters()
        }
        
        return filters
    }
    
    static func initializeFilters(){
        filters.append(Filter(id:0, title: "Drink", icon: UIImage(named:"drink")!, backgroundColor: UIColor.blue, textColor: UIColor.blue, iconColor:UIColor.white))
        
        filters.append(Filter(id:1, title: "Fish", icon:  UIImage(named:"fish")!, backgroundColor: UIColor.red, textColor: UIColor.red, iconColor:UIColor.white))
        
        filters.append(Filter(id:2, title: "Ingredients", icon: UIImage(named:"ingredients")!, backgroundColor: UIColor.purple, textColor: UIColor.purple, iconColor:UIColor.purple))
        
        filters.append(Filter(id:3, title: "Chicken", icon: UIImage(named:"chicken")!, backgroundColor: UIColor.magenta, textColor: UIColor.magenta, iconColor:UIColor.magenta))
        
        filters.append(Filter(id:4, title: "Pizza", icon: UIImage(named:"pizza")!, backgroundColor: UIColor.brown, textColor: UIColor.brown, iconColor:UIColor.brown))
        
        filters.append(Filter(id:5, title: "All", icon: UIImage(named:"restaurant_menu")!, backgroundColor: UIColor.lightGray, textColor: UIColor.lightGray, iconColor:UIColor.lightGray))
        
    }
    
    static func getDataFromServer(){
        // Implementation Here
        
    }
    
}
