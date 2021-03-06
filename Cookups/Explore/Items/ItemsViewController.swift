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
    

        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // UINavigationBar.appearance().tintColor = UIColor.white
        // Styling Navigation
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.barTintColor = AppSettings.appColor
        self.navigationController?.navigationBar.titleTextAttributes =  [NSAttributedStringKey.foregroundColor : UIColor.white]
        UIApplication.shared.statusBarview?.backgroundColor = AppSettings.appColor
        UIApplication.shared.statusBarStyle = .lightContent
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil)
        
        // Defa
      
        
        // Settingup Data in Collection View
        UI_ItemsCollectionView.dataSource = self
        UI_ItemsCollectionView.delegate = self
        productsArray = ProductsController.getProducts(filter: selectedFilter)
        // productsArray = getFilteredProducts(filter: selectedFilter, products: ProductsController.getProducts())
        //productsArray = ProductsController.getProducts()
        
        // Settingup the title
        self.navigationItem.title = selectedFilter.title
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
            itemCell.UI_LabelUserName.text          = UsersController.getUser(id: product.userID!).userName
            itemCell.UI_ImageUserProfilAvatar.image = UsersController.getUser(id: product.userID!).userPhoto
            itemCell.UI_LabelDay.text               = product.date
            itemCell.UI_LabelPrice.text             = "Rs. " +  String(product.price!)
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

}
