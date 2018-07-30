//
//  NotificationsTableViewCell.swift
//  Cookups
//
//  Created by HF Shan on 7/24/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class NotificationsTableViewCell: UITableViewCell {

   
    @IBOutlet weak var UI_ProfileAvatar: UIImageView!
    @IBOutlet weak var UI_LabelFoodTitle: UILabel!
    @IBOutlet weak var UI_LabelFoodLocation: UILabel!
    @IBOutlet weak var UI_LabelNotificationTime: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
