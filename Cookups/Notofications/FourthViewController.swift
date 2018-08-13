//
//  FourthViewController.swift
//  Cookups
//
//  Created by HF Shan on 7/24/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var UI_TableViewNotifications: UITableView!
    
    let burgerNames: [UIImage] = [
        UIImage(named:"CheeseBurger")!,
        UIImage(named:"BaconCheese")!,
        UIImage(named:"CaramelizedOnion")!,
        UIImage(named:"JuicyLucy")!,
        UIImage(named:"EnglishCheddar")!,
        UIImage(named:"HolsinBurger")!,
        UIImage(named:"ChipotleCorn")!,
        UIImage(named:"ThaiPork")!,
        UIImage(named:"CreoleCrab")!,
        UIImage(named:"MiddleEastern")!,
        UIImage(named:"Saltimbocca")!,
        ]
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        UI_TableViewNotifications.delegate = self
        UI_TableViewNotifications.dataSource = self
        
        // Styling Navigation
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.backgroundColor = AppSettings.appColor
        UIApplication.shared.statusBarview?.backgroundColor = AppSettings.appColor
        UIApplication.shared.statusBarStyle = .lightContent
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return burgerTitles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "notificationsTableViewCell") as! NotificationsTableViewCell
        
        cell.UI_ProfileAvatar.image = #imageLiteral(resourceName: "profile")
        cell.UI_LabelFoodTitle?.text = burgerTitles[indexPath.row]
        cell.UI_LabelFoodLocation?.text = "H-12 Islamabad"
        cell.UI_LabelNotificationTime?.text = "11:15"
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        return 66
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let mainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let DesVC = mainStoryboard.instantiateViewController(withIdentifier: "backupViewController") as! BackupViewController
        
        self.navigationController?.pushViewController(DesVC, animated: true)
    }
    
    
    

}
