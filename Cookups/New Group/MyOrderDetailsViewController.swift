//
//  MyOrderDetailsViewController.swift
//  Cookups
//
//  Created by HF Shan on 7/24/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class MyOrderDetailsViewController: UIViewController {

    @IBOutlet weak var UI_ViewOptionControlls: UIView!
    var orderCancelledStatus = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // Hiding Tabbar
        //UI_ViewOptionControlls.alpha = 0.0
        //UI_ViewOptionControlls.isHidden = true
        
        //self.tabBarController?.tabBar.isHidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        updateView()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
   func updateView(){
    if(orderCancelledStatus){
        UI_ViewOptionControlls.isHidden == true
        
    }
    
    
    }
    
    @IBAction func UI_ButtonViewSellersProfile(_ sender: UIButton) {
        let mainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let DesVC = mainStoryboard.instantiateViewController(withIdentifier: "sellerItemsProfileViewController") as! SellerItemsProfileViewController
        
        self.navigationController?.pushViewController(DesVC, animated: true)
    }
    
}
