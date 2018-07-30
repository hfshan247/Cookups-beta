//
//  FavoritesViewController.swift
//  Cookups
//
//  Created by HF Shan on 7/24/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class FavoritesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource   {

    @IBOutlet weak var UI_ItemsCollectionView: UICollectionView!
    
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
        
        UI_ItemsCollectionView.dataSource = self
        UI_ItemsCollectionView.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return burgerTitles.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let itemCell = collectionView.dequeueReusableCell(withReuseIdentifier: "itemsCollectionViewCell", for: indexPath) as! ItemsCollectionViewCell
        
        itemCell.layer.borderColor = UIColor.gray.cgColor
        itemCell.layer.borderWidth = 0.5
        itemCell.layer.cornerRadius = 4
        
        
        itemCell.UI_ItemImage.image = burgerNames[indexPath.item]
        itemCell.UI_ItemImage.layer.borderWidth = 0.05
        itemCell.UI_ItemImage.layer.cornerRadius = 4
        
        itemCell.UI_ItemTitle.text  = burgerTitles[indexPath.item]
        
        
        return itemCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let mainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let DesVC = mainStoryboard.instantiateViewController(withIdentifier: "backupViewController") as! BackupViewController
        
        self.navigationController?.pushViewController(DesVC, animated: true)
        
        
    }
    

}
