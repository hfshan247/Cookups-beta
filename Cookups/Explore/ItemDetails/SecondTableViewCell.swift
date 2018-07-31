//
//  SecondTableViewCell.swift
//  Cookups
//
//  Created by HF Shan on 7/22/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class SecondTableViewCell: UITableViewCell {

    
    @IBOutlet weak var UI_ItemUserFullName: UIButton!
    @IBOutlet weak var UI_ItemLocation: UILabel!
    @IBOutlet weak var UI_ItemRatings: UILabel!
    @IBOutlet weak var UI_ItemUserProfileImage: UIImageView!
    
    @IBOutlet weak var UI_ImageRatings1: UIImageView!
    @IBOutlet weak var UI_ImageRatings2: UIImageView!
    @IBOutlet weak var UI_ImageRatings3: UIImageView!
    @IBOutlet weak var UI_ImageRatings4: UIImageView!
    @IBOutlet weak var UI_ImageRatings5: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
