//
//  DatePopupViewController.swift
//  Cookups
//
//  Created by HF Shan on 8/2/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class DatePopupViewController: UIViewController {

    @IBOutlet weak var UI_LabelTitle: UILabel!
    @IBOutlet weak var UI_DatePicker: UIDatePicker!
    @IBOutlet weak var UI_ButtonSelectDate: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        let tapGestureRecognizer = UITapGestureRecognizer(target: self)
//        
//        view.isUserInteractionEnabled = true
//        view.addGestureRecognizer(tapGestureRecognizer)
        
        
        
    }

    func outsideViewTapped(recognizer: UITapGestureRecognizer){
       
        dismiss(animated: true)
        
    }
    
    @IBAction func UI_Action_SelectDate(_ sender: UIButton) {
        
        dismiss(animated: true)
        
    }
    
    
    
    
}
