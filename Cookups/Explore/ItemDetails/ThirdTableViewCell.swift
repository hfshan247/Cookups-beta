//
//  ThirdTableViewCell.swift
//  Cookups
//
//  Created by HF Shan on 7/31/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class ThirdTableViewCell: UITableViewCell {

    @IBOutlet weak var UI_ItemPortion: UILabel!
    @IBOutlet weak var UI_ItemUsersCapacity: UILabel!
    @IBOutlet weak var UI_ItemCategory: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
