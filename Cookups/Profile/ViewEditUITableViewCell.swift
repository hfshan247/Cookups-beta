//
//  ViewEditUITableViewCell.swift
//  Cookups
//
//  Created by HF Shan on 7/24/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class ViewEditUITableViewCell: UITableViewCell {

    @IBOutlet weak var UI_LabelTitleSettings: UILabel!
    @IBOutlet weak var UI_ImageSettingsIcon: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
