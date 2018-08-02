//
//  SellerItemsProfileViewController.swift
//  Cookups
//
//  Created by HF Shan on 7/21/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class SellerItemsProfileViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var selected_seller: User = User()
    var seller_products: [Product] =  [Product]()
    
    @IBOutlet weak var UI_ItemsCollectionView: UICollectionView!
    
    @IBOutlet weak var UI_LabelUserName: UILabel!
    @IBOutlet weak var UI_ImageUserProfile: UIImageView!
    @IBOutlet weak var UI_LabelLocation: UILabel!
    @IBOutlet weak var UI_ImageRatings1: UIImageView!
    @IBOutlet weak var UI_ImageRatings2: UIImageView!
    @IBOutlet weak var UI_ImageRatings3: UIImageView!
    @IBOutlet weak var UI_ImageRatings4: UIImageView!
    @IBOutlet weak var UI_ImageRatings5: UIImageView!
    @IBOutlet weak var UI_LabelUserRatings: UILabel!
    
    
//    let burgerNames: [UIImage] = [
//        UIImage(named:"CheeseBurger")!,
//        UIImage(named:"BaconCheese")!,
//        UIImage(named:"CaramelizedOnion")!,
//        UIImage(named:"JuicyLucy")!,
//        UIImage(named:"EnglishCheddar")!,
//        UIImage(named:"HolsinBurger")!,
//        UIImage(named:"ChipotleCorn")!,
//        UIImage(named:"ThaiPork")!,
//        UIImage(named:"CreoleCrab")!,
//        UIImage(named:"MiddleEastern")!,
//        UIImage(named:"Saltimbocca")!,
//        ]
//    
//    let burgerTitles = [
//        "Cheese Burger Burger",
//        "Bacon Cheese Burger",
//        "Caramelized Onion Burger",
//        "Juicy Lucy Burger",
//        "English Cheddar Burger",
//        "Holsin Burger Burger",
//        "Chipotle Corn Burger",
//        "Thai Pork Burger",
//        "Creole Crab Burger",
//        "Middle Eastern Burger",
//        "Saltimbocca Burger"
//    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        UI_ItemsCollectionView.dataSource = self
        UI_ItemsCollectionView.delegate = self
        
        // setup data
        seller_products = ProductsController.getProducts(user: selected_seller)
        UI_LabelUserName?.text = selected_seller.userName
        UI_ImageUserProfile.image = selected_seller.userPhoto
        UI_ImageRatings1.image = selected_seller.stars?[0]
        UI_ImageRatings2.image = selected_seller.stars?[1]
        UI_ImageRatings3.image = selected_seller.stars?[2]
        UI_ImageRatings4.image = selected_seller.stars?[3]
        UI_ImageRatings5.image = selected_seller.stars?[4]
        
        UI_LabelLocation.text = selected_seller.location
        UI_LabelUserRatings.text = selected_seller.ratings
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return seller_products.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let itemCell = collectionView.dequeueReusableCell(withReuseIdentifier: "itemsCollectionViewCell", for: indexPath) as! ItemsCollectionViewCell
        
        itemCell.layer.borderColor = UIColor.gray.cgColor
        itemCell.layer.borderWidth = 0.5
        itemCell.layer.cornerRadius = 4
        
        itemCell.UI_ItemImage.image = seller_products[indexPath.row].images?[0]
        //itemCell.UI_ItemImage.image = burgerNames[indexPath.item]
        itemCell.UI_ItemImage.layer.borderWidth = 0.05
        itemCell.UI_ItemImage.layer.cornerRadius = 4
        
        itemCell.UI_ItemTitle.text  = seller_products[indexPath.item].title
        
        // Ratings:
        itemCell.UI_ImageRatings1.image         = seller_products[indexPath.item].stars?[0]
        itemCell.UI_ImageRatings2.image         = seller_products[indexPath.item].stars?[1]
        itemCell.UI_ImageRatings3.image         = seller_products[indexPath.item].stars?[2]
        itemCell.UI_ImageRatings4.image         = seller_products[indexPath.item].stars?[3]
        itemCell.UI_ImageRatings5.image         = seller_products[indexPath.item].stars?[4]
        
        
        return itemCell
    }

    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let mainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let DesVC = mainStoryboard.instantiateViewController(withIdentifier: "backupViewController") as! BackupViewController
        
        DesVC.product = seller_products[indexPath.row]
        
        self.navigationController?.pushViewController(DesVC, animated: true)
        
        
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
