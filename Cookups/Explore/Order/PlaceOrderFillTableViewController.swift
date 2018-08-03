//
//  PlaceOrderFillTableViewController.swift
//  Cookups
//
//  Created by HF Shan on 7/23/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class PlaceOrderFillTableViewController: UITableViewController {
    
    var datePicker: UIDatePicker!
    
    var count: Int? = 6;
    
    var product: Product = Product()
    var order: Order = Order()
    
    @IBOutlet weak var UI_LabelTitle: UILabel!
    @IBOutlet weak var lblPortions: UILabel!
    @IBOutlet weak var UI_LabelPrice: UILabel!
    @IBOutlet weak var UI_LabelTotal: UILabel!
    @IBOutlet weak var UI_LabelAddressSelected: UILabel!
    @IBOutlet weak var UI_LabelAvailableInfo: UILabel!
    @IBOutlet weak var UI_LabelDeliveryDate: UILabel!
    @IBOutlet weak var UI_LabelDeliveryTime: UILabel!
    @IBOutlet weak var UI_LabelPaymentType: UILabel!
    
     @IBOutlet weak var btnLblDeliveryDate: UIButton!
    @IBOutlet weak var btnLblDeliveryTime: UIButton!
   
    
    @IBOutlet weak var UI_StepperPortions: UIStepper!
    
    
    
    
    // Buttons
//    @IBOutlet weak var UI_Button_SelectTime: UIButton!
    
    @IBAction func Action_Button_SelectDate(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Popups", bundle: nil)
        let datePopup = storyboard.instantiateViewController(withIdentifier: "datePopupViewController") as! DatePopupViewController
        datePopup.delegateDate = self
        self.present(datePopup, animated: true)
    }
    
    @IBAction func Action_Button_SelectTime(_ sender: UIButton) {

        let storyboard = UIStoryboard(name: "Popups", bundle: nil)
        let timePopup = storyboard.instantiateViewController(withIdentifier: "timePopupViewController") as! TimePopupViewController
        timePopup.delegateTime = self
        self.present(timePopup, animated: true)

//        let imagePopup = self.storyboard?.instantiateViewController(withIdentifier: "viewImagesViewController") as! ViewImagesViewController
//        self.present(imagePopup, animated: true)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        // Settingup data
        product = RuntimeApp.product
        order = RuntimeApp.placeOrder
        
        
        // Designing
        customizeViwe()
        // DatePicker
        datePicker = UIDatePicker()
        datePicker.center = view.center
        //view.addSubview(datePicker)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 6
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if(section == 0){
            return 4
        }
        if(section == 1){
            return 3
        }
        if(section == 2){
            return 4
        }
        if(section == 3){
            return 4
        }
        if(section == 4){
            return 2
        }
        if(section == 5){
            return 3
        }
        
        
        return 0
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {

        if(section == 5){
            return 0.1
        }
        
        return 10
    }
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.1
    }
    
    @IBAction func UI_StepperForPortions(_ sender: UIStepper) {
        
        order.portions = Int(sender.value)
        lblPortions.text = String(describing: order.portions!)
        
        order.total = order.portions! * product.price!
        UI_LabelTotal.text = "Rs. " +  String(describing: order.total!)
        
        
    }
    
    func customizeViwe(){
        // Customize view:
        
        //order.portions = Int(sender.value)
        lblPortions.text = String(describing: order.portions!)
        
        order.total = order.portions! * product.price!
        UI_LabelTotal.text = "Rs. " +  String(describing: order.total!)
        
        UI_LabelTitle.text = product.title
//        UI_LabelPortions.text = String(describing: order.portions!)
//
        UI_LabelPrice.text = "Rs. " + String(describing: product.price!)
//
//
//        // Customizing Stepper:
        UI_StepperPortions.maximumValue = Double(10)
//

    }
    
}

extension PlaceOrderFillTableViewController: TimePopupDelegate{
    func popupTimeSelected(time: String) {
        btnLblDeliveryTime.setTitle(time, for: .normal)
    }
}

extension PlaceOrderFillTableViewController: DatePopupDelegate{
    func popupDateSelected(date: String) {
        btnLblDeliveryDate.setTitle(date, for: .normal)
    }
    
    
}
