//
//  PlaceOrderViewController.swift
//  Cookups
//
//  Created by HF Shan on 7/24/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class PlaceOrderViewController: UIViewController {

    
//    var product: Product = Product()
//    var user: User = User()
//    var order: Order = Order()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Styling Navigation
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.barTintColor = AppSettings.appColor
        self.navigationController?.navigationBar.titleTextAttributes =  [NSAttributedStringKey.foregroundColor : UIColor.white]
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil)
        
        UIApplication.shared.statusBarview?.backgroundColor = AppSettings.appColor
        UIApplication.shared.statusBarStyle = .lightContent
  
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func UI_Button_ConfirmPlaceOrger(_ sender: UIButton) {
        let mainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let DesVC = mainStoryboard.instantiateViewController(withIdentifier: "successOrderViewController") as! SuccessOrderViewController
        
        //RuntimeApp.placeOrder.id = OrdersController.getAvailableOrderID()
        //OrderController.orders.append(RuntimeApp.placeOrder)
        
        
        
        OrdersController.orders.append(Order(id: OrdersController.getAvailableOrderID(),
                            productId: RuntimeApp.product.id,
                            portions: 5,
                            total: 1000,
                            deliveryOption: DeliveryOption.Delivery,
                            deliveryAddress: Address(careOff : "Sangha",apartment:"Khudadad Heights", house:"303", streetAddress:"No Street Address", neighbourhood:"Shopkeeper", geoPostion:GeoPosition(latitude: 11.11, longitude: 12.12)),
                            DeliveryTime: "10:00 AM",
                            DeliveryDate: "Monday 20 July",
                            pickupAddress: Address(careOff : "Sangha",apartment:"Khudadad Heights", house:"303", streetAddress:"No Street Address", neighbourhood:"Shopkeeper", geoPostion:GeoPosition(latitude: 11.11, longitude: 12.12)),
                            PickupTime: "String?",
                            PickupDate: "String?",
                            Note : "No note",
                            copun : "No copun"
            
        ))
        DesVC.current_order = OrdersController.getOrders().last!
        self.navigationController?.pushViewController(DesVC, animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func UI_ButtonShowSellersProfile(_ sender: UIButton) {
        let mainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let DesVC = mainStoryboard.instantiateViewController(withIdentifier: "sellerItemsProfileViewController") as! SellerItemsProfileViewController
        
        self.navigationController?.pushViewController(DesVC, animated: true)
    }
    
    
    

}
