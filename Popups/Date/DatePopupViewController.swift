//
//  DatePopupViewController.swift
//  Cookups
//
//  Created by HF Shan on 8/2/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class DatePopupViewController: UIViewController {

    
    @IBOutlet var viewBachground: UIView!
    @IBOutlet var datePopupBackground: UIView!
    @IBOutlet weak var UI_LabelTitle: UILabel!
    @IBOutlet weak var UI_DatePicker: UIDatePicker!
    @IBOutlet weak var UI_ButtonSelectDate: UIButton!
    
    var delegateDate: DatePopupDelegate?
    
    var formatedDate: String{
        get{
            let formatter = DateFormatter()
            formatter.dateStyle = .short
            return formatter.string(from: UI_DatePicker.date)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        let tapGestureRecognizer = UITapGestureRecognizer(target: self)
//        
//        view.isUserInteractionEnabled = true
//        view.addGestureRecognizer(tapGestureRecognizer)
        UI_DatePicker.datePickerMode = .date
        
    }

    func outsideViewTapped(recognizer: UITapGestureRecognizer){
       
        dismiss(animated: true)
        
    }
    
    @IBAction func UI_Action_SelectDate(_ sender: UIButton) {
        delegateDate?.popupDateSelected(date: formatedDate)
        dismiss(animated: true)
        
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    
}
