//
//  SecondViewController.swift
//  Cookups
//
//  Created by hussain farooq on 19/07/2018.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var UI_TableViewMyOrders: UITableView!
    var revert = true
    
    let burgerTitles = [
        "Cheese Burger Burger",
        "Bacon Cheese Burger",
        "Caramelized Onion Burger",
        "Juicy Lucy Burger",
        "English Cheddar Burger",
        "Holsin Burger Burger",
        "Chipotle Corn Burger",
        "Thai Pork Burger",
        "Creole Crab Burger",
        "Middle Eastern Burger",
        "Saltimbocca Burger"
    ]
    
    let providers = [
        "Pizza Hut, Islamabad, Lahore, Multan, Karachi, Rawalpindi",
        "Lasani",
        "Muhammad Hussain Farooq",
        "Fresh Food",
        "K&Ns",
        "Food Street",
        "Chipotle Corn Burger",
        "Thai Pork Burger",
        "Creole Crab Burger",
        "Middle Eastern Burger",
        "Saltimbocca Burger"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        UI_TableViewMyOrders.delegate = self
        UI_TableViewMyOrders.dataSource = self
        
        // Hiding Tabbar
        // self.tabBarController?.tabBar.isHidden = false
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return burgerTitles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let tableCell = tableView.dequeueReusableCell(withIdentifier: "myOrdersTableViewCell") as? MyOrdersTableViewCell
        
        tableCell?.UI_LabelTitle?.text = burgerTitles[indexPath.row]
        tableCell?.UI_LabelSeller?.text = providers[indexPath.row]
        tableCell?.UI_LabelDate?.text = "Monday, July 23"
        tableCell?.UI_LabelCost?.text = "Rs. 500"
        if (revert){
            tableCell?.UI_LabelStatus?.text = "Cancelled";  tableCell?.UI_LabelStatus?.backgroundColor = UIColor.red; tableCell?.UI_LabelStatus?.textColor = UIColor.white
            revert = false
        }
        else{
            tableCell?.UI_LabelStatus?.text = "Pending"; tableCell?.UI_LabelStatus?.backgroundColor = UIColor.white; tableCell?.UI_LabelStatus?.textColor = UIColor.black
            revert = true
        }
        
        return tableCell!
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        if indexPath.row == 0 {
//
//
//            return 211
//        }
//        else if indexPath.row == 1 {
//
//
//            return 85
//        }
        
        //return UITableViewAutomaticDimension
        
        return 170
    }
    
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "segue", sender: self)
    }


}

