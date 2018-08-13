//
//  ThirdViewController.swift
//  Cookups
//
//  Created by HF Shan on 7/21/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UITextFieldDelegate {
    
    
    @IBOutlet weak var UI_SearchTextField: UITextField!
    
    @IBOutlet weak var UI_Label_NoResults: UILabel!
    
    @IBOutlet weak var UI_SearchItemsCollectionView: UICollectionView!
    
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
    
    var re = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        UI_SearchItemsCollectionView.dataSource = self
        UI_SearchItemsCollectionView.delegate = self
        
        // Styling Navigation
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.barTintColor = UIColor.red
        self.navigationController?.navigationBar.titleTextAttributes =  [NSAttributedStringKey.foregroundColor : UIColor.white]
        UIApplication.shared.statusBarview?.backgroundColor = UIColor.red
        UIApplication.shared.statusBarStyle = .lightContent
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if(re.count == 0){
            UI_Label_NoResults.isHidden = false
        }
        return re.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let itemCell = collectionView.dequeueReusableCell(withReuseIdentifier: "itemsCollectionViewCell", for: indexPath) as! ItemsCollectionViewCell
        
        itemCell.layer.borderColor = UIColor.gray.cgColor
        itemCell.layer.borderWidth = 0.5
        itemCell.layer.cornerRadius = 4
        
        
        itemCell.UI_ItemImage.image = burgerNames[indexPath.item]
        itemCell.UI_ItemImage.layer.borderWidth = 0.05
        itemCell.UI_ItemImage.layer.cornerRadius = 4
        
        itemCell.UI_ItemTitle.text  = re[indexPath.item]
        
        
        return itemCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let mainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let DesVC = mainStoryboard.instantiateViewController(withIdentifier: "sellerItemsProfileViewController") as! SellerItemsProfileViewController
        
        self.navigationController?.pushViewController(DesVC, animated: true)
        
        
    }
    
    
    //Search
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if(UI_SearchTextField.text != ""){
            re = burgerTitles
             UI_Label_NoResults.isHidden = true
        }
        else{
            re = [String]()
            UI_Label_NoResults.isHidden = false
        }
        if(re.count == 0){
            
        }
        else{
           
        }
        
        UI_SearchItemsCollectionView.reloadData()
        UI_SearchTextField.resignFirstResponder()
        return true
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
