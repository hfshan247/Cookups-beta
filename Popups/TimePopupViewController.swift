//
//  TimePopupViewController.swift
//  Cookups
//
//  Created by HF Shan on 8/3/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class TimePopupViewController: UIViewController {

    @IBOutlet var viewBachground: UIView!
    @IBOutlet weak var UI_LabelTitle: UILabel!
    @IBOutlet weak var UI_TimePicker: UIDatePicker!
    @IBOutlet weak var UI_ButtonSelectTime: UIButton!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(TimePopupViewController.viewBachgroundTapped))
   
        viewBachground.isUserInteractionEnabled = true
        viewBachground.addGestureRecognizer(tapGestureRecognizer)
  
    }
    
    @objc func viewBachgroundTapped(){
         dismiss(animated: true)
    }
    
    @IBAction func UI_Action_SelectTime(_ sender: UIButton) {

        dismiss(animated: true)

    }

    override var prefersStatusBarHidden: Bool{
        return true
    }

}
