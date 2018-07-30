//
//  MyOrdersTableViewCell.swift
//  Cookups
//
//  Created by HF Shan on 7/24/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class MyOrdersTableViewCell: UITableViewCell {

    
    @IBOutlet weak var UI_LabelTitle: UILabel!
    @IBOutlet weak var UI_LabelSeller: UILabel!
    @IBOutlet weak var UI_LabelDate: UILabel!
    @IBOutlet weak var UI_LabelCost: UILabel!
    @IBOutlet weak var UI_LabelStatus: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
