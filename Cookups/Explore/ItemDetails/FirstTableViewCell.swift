//
//  FirstTableViewCell.swift
//  Cookups
//
//  Created by HF Shan on 7/22/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class FirstTableViewCell: UITableViewCell {

    @IBOutlet weak var UI_ItemTitle: UILabel!
    @IBOutlet weak var UI_ItemDate: UILabel!
    @IBOutlet weak var UI_ItemTimeSpam: UILabel!
    @IBOutlet weak var UI_ItemUserFullName: UIButton!
    @IBOutlet weak var UI_ItemLocation: UILabel!
    @IBOutlet weak var UI_ItemRatings: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
