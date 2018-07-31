//
//  ItemsViewController.swift
//  Cookups
//
//  Created by HF Shan on 7/20/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class ItemsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource  {
    
    var productsArray: [Product] = [Product]()
    var selectedFilter: Filter = Filter()
    
    @IBOutlet weak var UI_ItemsCollectionView: UICollectionView!
    
    // Green Color: 27ae60
    
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

        // Setting up the Navigation Bar Header Title
        navigationItem.title = selectedFilter.title
        navigationItem.titleView?.tintColor = AppSettings.darkColor
        
        
        // Do any additional setup after loading the view.
        
        let myRedColor = UIColor(
            red:1.0,
            green:0.0,
            blue:0.0,
            alpha:1.0)
        
        //
        self.navigationController?.navigationBar.tintColor = myRedColor
        // Showing tabbar
        self.tabBarController?.tabBar.isHidden = false
        
        // Settingup Data in Collection View
        UI_ItemsCollectionView.dataSource = self
        UI_ItemsCollectionView.delegate = self
        productsArray = getFilteredProducts(filter: selectedFilter, products: ProductsController.getProducts())
        //productsArray = ProductsController.getProducts()
        print(selectedFilter.title!)
        print(productsArray.count)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productsArray.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let itemCell = collectionView.dequeueReusableCell(withReuseIdentifier: "itemsCollectionViewCell", for: indexPath) as! ItemsCollectionViewCell
        
        
        if let product = productsArray[indexPath.item] as? Product{
            
            itemCell.UI_ItemImage.image             = product.images?[0]
            itemCell.UI_ItemTitle.text              = product.title
            itemCell.UI_LabelUserName.text          = product.userName
            itemCell.UI_ImageUserProfilAvatar.image = product.userPhoto
            itemCell.UI_LabelDay.text               = product.date
            itemCell.UI_LabelPrice.text             = product.price
            itemCell.UI_LabelLocation.text          = product.location
            
            itemCell.UI_ImageRatings1.image         = product.stars?[0]
            itemCell.UI_ImageRatings2.image         = product.stars?[1]
            itemCell.UI_ImageRatings3.image         = product.stars?[2]
            itemCell.UI_ImageRatings4.image         = product.stars?[3]
            itemCell.UI_ImageRatings5.image         = product.stars?[4]
            
        }
        
        // Styling the product
        itemCell.UI_ItemImage.layer.borderWidth = 0.05
        itemCell.UI_ItemImage.layer.cornerRadius = 4
        
        itemCell.layer.borderColor = UIColor.gray.cgColor
        itemCell.layer.borderWidth = 0.5
        itemCell.layer.cornerRadius = 4
        
        return itemCell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let mainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let DesVC = mainStoryboard.instantiateViewController(withIdentifier: "backupViewController") as! BackupViewController
        
        DesVC.product = productsArray[indexPath.row]
        RuntimeApp.product = productsArray[indexPath.row] 
//        let CarosalVC = mainStoryboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
//        CarosalVC.contentImages = productsArray[indexPath.row].images!
        
        
        self.navigationController?.pushViewController(DesVC, animated: true)
        
        
    }
    
    func getFilteredProducts(filter: Filter, products: [Product]) -> [Product]{
        
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

}
