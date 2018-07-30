//
//  TempTableViewCell.swift
//  Cookups
//
//  Created by HF Shan on 7/21/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class TempTableViewCell: UITableViewCell {

    
    @IBOutlet weak var UI_ItemImage: UIImageView!
    
    @IBOutlet weak var UI_ItemTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
