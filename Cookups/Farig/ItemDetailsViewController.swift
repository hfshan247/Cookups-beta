//
//  ItemDetailsViewController.swift
//  Cookups
//
//  Created by HF Shan on 7/21/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class ItemDetailsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    
    @IBOutlet weak var tableView: UITableView!
    
    var imageView = UIImageView()
    
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
        "Saltimbocca Burger",
        
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
        
        // Hidden Navigation Bar :
        self.navigationController?.navigationBar.isHidden = true
        self.navigationController?.navigationBar.isOpaque = true
        //self.navigationController?.navigationBar.backItem?.hidesBackButton = false
        
        // Setting up stratchy image
        
        setupTableView()
        setupImageView()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupTableView(){
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.contentInset = UIEdgeInsets(top: 200, left: 0, bottom: 0, right: 0)
    }
    
    func setupImageView(){
        view.addSubview(imageView)
        let rect = CGRect(x: 0, y: 0, width: view.bounds.width, height: 200)
        imageView.frame = rect
        imageView.image = UIImage(named: "JuicyLucy")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Hide the Navigation Bar
//        self.navigationItem.setHidesBackButton(true, animated:true);
//        self.navigationController?.setNavigationBarHidden(true, animated: animated)
//        self.tabBarController?.tabBar.isHidden = true
//
    }
    
   
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (burgerTitles.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableCell = tableView.dequeueReusableCell(withIdentifier: "tempTableViewCell")
        
        tableCell?.textLabel?.text = burgerTitles[indexPath.row]
        
        return tableCell!
    }

//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        let y = 200 - (scrollView.contentOffset.y + 200 )
//        let h = max(60, y)
//        print(y)
//        let rect = CGRect(x: 0, y: 0, width: view.bounds.width, height: h)
//        imageView.frame = rect
//    }


}
