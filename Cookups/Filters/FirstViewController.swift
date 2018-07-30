//
//  FirstViewController.swift
//  Cookups
//
//  Created by hussain farooq on 19/07/2018.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    
//    let filterTitlesArray = ["Drink",
//                             "Fish Food",
//                             "Ingredients",
//                             "Chicken",
//                             "Pizza",
//                             "All",
//                             ]
//
//    let filterIconsArray: [UIImage] = [
//        UIImage(named:"drink")!,
//        UIImage(named:"fish")!,
//        UIImage(named:"ingredients")!,
//        UIImage(named:"chicken")!,
//        UIImage(named:"pizza")!,
//        UIImage(named:"restaurant_menu")!,
//        ]
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    var filtersArray = [Filter]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationBarItems()
        // Do any additional setup after loading the view, typically from a nib.
        collectionView.dataSource = self
        collectionView.delegate = self
        
//        var layout = self.collectionView.collectionViewLayout as! UICollectionViewFlowLayout
//        layout.sectionInset = UIEdgeInsetsMake(0,5,0,5)
//        layout.itemSize = CGSize(width: (self.collectionView.frame.size.width - 20)/2, height: self.collectionView.frame.height/3)
        
        filtersArray = FilterController.getFilters()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 
    
    let filterColorsArray: [UIColor]  = [UIColor.red, UIColor.blue, UIColor.purple, UIColor.magenta, UIColor.brown, UIColor.lightGray ]
    
    
    
    private func setupNavigationBarItems(){
        
        let myRedColor = UIColor(
            red:1.0,
            green:0.0,
            blue:0.0,
            alpha:1.0)
        
       
        
        let titleImageView = UIImageView(image: #imageLiteral(resourceName: "pan_green"))
        titleImageView.tintColor = myRedColor
        titleImageView.frame = CGRect(x:0, y:0, width:34, height:34)
        titleImageView.contentMode = .scaleAspectFit
        
        
        navigationItem.titleView = titleImageView
        
    }

    func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print(filtersArray.count)
        return filtersArray.count
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let filterCell = collectionView.dequeueReusableCell(withReuseIdentifier: "filterCollectionViewCell", for: indexPath) as! FilterCollectionViewCell
        
        if let filter = filtersArray[indexPath.item] as? Filter{
            
            filterCell.UI_FilterTitle.text = filter.title
            filterCell.UI_FilterTitle.textColor = filter.textColor
            
            filterCell.UI_FilterImage.image = filter.icon
            filterCell.UI_FilterImage.backgroundColor = filter.backgroundColor
            
        }
        
        
        filterCell.layer.borderColor = UIColor.gray.cgColor
        filterCell.layer.borderWidth = 0.5
        filterCell.layer.cornerRadius = 4
        
        
//        filterCell.UI_FilterImage.image = filterIconsArray[indexPath.item]
//        filterCell.UI_FilterImage.backgroundColor = filterColorsArray[indexPath.item]
//
//        filterCell.UI_FilterTitle.text  = filterTitlesArray[indexPath.item]
//        filterCell.UI_FilterTitle.textColor = filterColorsArray[indexPath.item]
        
        return filterCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let mainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let DesVC = mainStoryboard.instantiateViewController(withIdentifier: "itemsViewController") as! ItemsViewController
        
        self.navigationController?.pushViewController(DesVC, animated: true)
        
        
    }
    
    
}

