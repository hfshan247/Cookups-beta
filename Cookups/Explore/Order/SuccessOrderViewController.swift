//
//  SuccessViewController.swift
//  Cookups
//
//  Created by HF Shan on 8/13/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class SuccessOrderViewController: UIViewController {

    @IBOutlet weak var lblOrderDescription: UILabel!
    @IBOutlet weak var lblProductTitle: UILabel!
    
    var current_order: Order = Order()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Styling Navigation
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.barTintColor = AppSettings.appColor
        self.navigationController?.navigationBar.titleTextAttributes =  [NSAttributedStringKey.foregroundColor : UIColor.white]
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Home", style: .plain, target: nil, action: nil)
        
        UIApplication.shared.statusBarview?.backgroundColor = AppSettings.appColor
        UIApplication.shared.statusBarStyle = .lightContent
        
        // Data
        lblOrderDescription.text = "Your Order #" + String(describing: current_order.id!)  + " has been placed"
        lblProductTitle.text = ProductsController.getProduct(productId: current_order.productId!).title!
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnDone(_ sender: UIButton) {
        //Go to Root View Controller
        _ = navigationController?.popToRootViewController(animated: true)
        
        // Destroy All Runtime Memories
        
    }
    
    func back(sender: UIBarButtonItem) {
        
        //Go to Root View Controller
        _ = navigationController?.popToRootViewController(animated: true)
        
        // Destroy All Runtime Memories
        
    }

}
