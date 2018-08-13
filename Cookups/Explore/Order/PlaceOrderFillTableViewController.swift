//
//  PlaceOrderFillTableViewController.swift
//  Cookups
//
//  Created by HF Shan on 7/23/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class PlaceOrderFillTableViewController: UITableViewController {
    
    var dateButton = 0
    var timeButton = 0
    
    var datePicker: UIDatePicker!
    
    var count: Int? = 6;
    
    var product: Product = Product()
    //var order: Order = Order()
    
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
    
    @IBOutlet weak var btnLblPickupDate: UIButton!
    @IBOutlet weak var btnLblPickupTime: UIButton!
    
    @IBOutlet weak var UI_StepperPortions: UIStepper!
    
    @IBAction func sgmntDeliveryOptions(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            RuntimeApp.placeOrder.deliveryOption = DeliveryOption.Delivery
            print("Segment 1 Selected")
    
            break
        case 1:
            RuntimeApp.placeOrder.deliveryOption = DeliveryOption.PickUp
            print("Segment 2 Selected")
            break
        default:
            print("Invalid Segment Selected")
            break
        }
    }
    
    
    
    // Buttons
//    @IBOutlet weak var UI_Button_SelectTime: UIButton!
    
    @IBAction func Action_Button_SelectDate(_ sender: UIButton) {
        dateButton = 1
        let storyboard = UIStoryboard(name: "Popups", bundle: nil)
        let datePopup = storyboard.instantiateViewController(withIdentifier: "datePopupViewController") as! DatePopupViewController
        datePopup.delegateDate = self
        self.present(datePopup, animated: true)
    }
    
    @IBAction func Action_Button_SelectTime(_ sender: UIButton) {
        timeButton = 1
        let storyboard = UIStoryboard(name: "Popups", bundle: nil)
        let timePopup = storyboard.instantiateViewController(withIdentifier: "timePopupViewController") as! TimePopupViewController
        timePopup.delegateTime = self
        self.present(timePopup, animated: true)

//        let imagePopup = self.storyboard?.instantiateViewController(withIdentifier: "viewImagesViewController") as! ViewImagesViewController
//        self.present(imagePopup, animated: true)
    }
    
    
    @IBAction func Action_Button_SelectDeliveryDate(_ sender: UIButton) {
         dateButton = 2
        let storyboard = UIStoryboard(name: "Popups", bundle: nil)
        let datePopup = storyboard.instantiateViewController(withIdentifier: "datePopupViewController") as! DatePopupViewController
        datePopup.delegateDate = self
        self.present(datePopup, animated: true)
    }
    
    @IBAction func Action_Button_SelectDeliveryTime(_ sender: UIButton) {
        timeButton = 2
        let storyboard = UIStoryboard(name: "Popups", bundle: nil)
        let timePopup = storyboard.instantiateViewController(withIdentifier: "timePopupViewController") as! TimePopupViewController
        timePopup.delegateTime = self
        self.present(timePopup, animated: true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Settingup data
        product = RuntimeApp.product
        RuntimeApp.placeOrder = RuntimeApp.placeOrder
        
        RuntimeApp.placeOrder.productId = product.id
        
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
        
        RuntimeApp.placeOrder.portions = Int(sender.value)
        lblPortions.text = String(describing: RuntimeApp.placeOrder.portions!)
        
        //Ordr Portions
        RuntimeApp.placeOrder.total = RuntimeApp.placeOrder.portions! * product.price!
        UI_LabelTotal.text = "Rs. " +  String(describing: RuntimeApp.placeOrder.total!)
        
        
    }
    
    func customizeViwe(){
        // Customize view:
        
        //order.portions = Int(sender.value)
        lblPortions.text = String(describing: RuntimeApp.placeOrder.portions!)
        
        RuntimeApp.placeOrder.total = RuntimeApp.placeOrder.portions! * product.price!
        UI_LabelTotal.text = "Rs. " +  String(describing: RuntimeApp.placeOrder.total!)
        
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
        switch timeButton {
        case 1:
            btnLblDeliveryTime.setTitle(time, for: .normal)
            RuntimeApp.placeOrder.DeliveryTime = time
            timeButton = 0
            break
            
        case 2:
            btnLblPickupTime.setTitle(time, for: .normal)
            RuntimeApp.placeOrder.PickupTime = time
            timeButton = 0
            break
        default:
            print("Invalid time button")
            break
        }
        
        
    }
//    func popupDeliveryTimeSelected(time: String){
//        btnLblDeliveryTime.setTitle(time, for: .normal)
//    }
}

extension PlaceOrderFillTableViewController: DatePopupDelegate{
    func popupDateSelected(date: String) {
        
        switch dateButton {
        case 1:
            btnLblDeliveryDate.setTitle(date, for: .normal)
            RuntimeApp.placeOrder.DeliveryDate = date
            dateButton = 0
            break
        case 2:
            btnLblPickupDate.setTitle(date, for: .normal)
            RuntimeApp.placeOrder.PickupDate = date
            dateButton = 0
        default:
            print("Invalid date button")
            break
        }
        
      //  btnLblDeliveryDate.setTitle(date, for: .normal)
        
    }
//    func popupDeliveryDateSelected(date:String){
//        btnLblDeliveryDate.setTitle(date, for: .normal)
//    }
}

