//
//  ItemsCollectionViewCell.swift
//  Cookups
//
//  Created by HF Shan on 7/20/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class ItemsCollectionViewCell: UICollectionViewCell {
   
    // Item Properties visible
    
    @IBOutlet weak var UI_LabelUserName: UILabel!
    @IBOutlet weak var UI_ItemImage: UIImageView!
    @IBOutlet weak var UI_ItemTitle: UILabel!
    @IBOutlet weak var UI_ImageUserProfilAvatar: UIImageView!
    @IBOutlet weak var UI_LabelDay: UILabel!
    @IBOutlet weak var UI_LabelPrice: UILabel!
    @IBOutlet weak var UI_LabelLocation: UILabel!
    
    // Ratings Immages
    @IBOutlet weak var UI_ImageRatings1: UIImageView!
    @IBOutlet weak var UI_ImageRatings2: UIImageView!
    @IBOutlet weak var UI_ImageRatings3: UIImageView!
    @IBOutlet weak var UI_ImageRatings4: UIImageView!
    @IBOutlet weak var UI_ImageRatings5: UIImageView!
    
}
