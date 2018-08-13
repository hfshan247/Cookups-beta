//
//  FifthViewController.swift
//  Cookups
//
//  Created by HF Shan on 7/24/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var UI_TableViewEditProfile: UITableView!
    
    let settings = [
        "View & Edit Profile",
        "Your Faorites",
        "Terms & Conditions",
        "Privacy Policy",
        "Help & Support",
        "Logout"
    ]
    
    let settingsIcons  = [
    UIImage(named:"customer_empty")!,
    UIImage(named:"heart_empty")!,
    UIImage(named:"copy")!,
    UIImage(named:"lock")!,
    UIImage(named:"help")!,
    UIImage(named:"exit")!,
    ]
    
    
    let viewControllersIDs = [
    "viewEditViewController",
    "favoritesViewController",
    "termsConditionsViewController",
    "privacyPolicyViewController",
    "helpSupportViewController",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        UI_TableViewEditProfile.delegate = self
        UI_TableViewEditProfile.dataSource = self
        
        setupNavigationBarItems()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    
    private func setupNavigationBarItems(){
        
        let myRedColor = UIColor(
            red:1.0,
            green:0.0,
            blue:0.0,
            alpha:1.0)
        
        let titleImageView = UIImageView(image: #imageLiteral(resourceName: "profile"))
        titleImageView.tintColor = myRedColor
        titleImageView.frame = CGRect(x:0, y:0, width:34, height:34)
        titleImageView.contentMode = .scaleAspectFit
        
        
        navigationItem.titleView = titleImageView
        navigationItem.prompt = "Muhammad Hussain Farooq"
        
        // Styling Navigation
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.backgroundColor = AppSettings.appColor
        UIApplication.shared.statusBarview?.backgroundColor = AppSettings.appColor
        UIApplication.shared.statusBarStyle = .lightContent
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "viewEditUITableViewCell") as! ViewEditUITableViewCell
        
        cell.UI_LabelTitleSettings?.text = settings[indexPath.row]
        cell.UI_ImageSettingsIcon?.image = settingsIcons[indexPath.row]; 
        
        return cell
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        createAlert(title: "Please Confirm", message: "Do you really want to logout ?")
//    }
    
    func createAlert(title: String, message: String){
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
       
       //Creating on Button
        alert.addAction(UIAlertAction(title: "Logout", style: UIAlertActionStyle.default, handler: {(action) in
            alert.dismiss(animated: true, completion:nil)
        print("YES")
        }))
            
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: {(action) in
            alert.dismiss(animated: true, completion:nil)
        print("NO")
        }))
    
        self.present(alert, animated:true, completion: nil)
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath .row{
        case 5:
            // Logout
            createAlert(title: "Please Confirm", message: "Do you really want to logout ?")
            
            break
        default:
            let mainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let DesVC = mainStoryboard.instantiateViewController(withIdentifier: viewControllersIDs[indexPath.row]) 
            
            self.navigationController?.pushViewController(DesVC, animated: true)
        }
        
    }
    

    
    
}
