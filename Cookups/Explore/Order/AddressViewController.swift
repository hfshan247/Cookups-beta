//
//  AddressViewController.swift
//  Cookups
//
//  Created by HF Shan on 7/23/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class AddressViewController: UIViewController {

    
    
    
    @IBOutlet weak var UI_FormView: UIView!
    
    @IBOutlet weak var UI_MapView: UIView!
    
    @IBOutlet weak var UI_ButtonMapView: UIButton!
    
    @IBOutlet weak var UI_ButtonFormView: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        UI_FormView.alpha = 1.0
        UI_MapView.alpha = 0.0
        UI_ButtonFormView.isHidden = true
        UI_ButtonMapView.isHidden = false
        
        // Setting Form View Data
        let mainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let DesVC = mainStoryboard.instantiateViewController(withIdentifier: "addressFormViewControllerViewController") as! AddressFormViewControllerViewController
        
        DesVC.addressSelected = 0;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func UI_SegmentedControlAddressSelection(_ sender: UISegmentedControl) {
        
        switch(sender.selectedSegmentIndex){
        case(0):
//            UI_FormView.alpha = 0.0
//            UI_MapView.alpha = 1.0
            
            UI_ButtonMapView.isHidden = true
            UI_ButtonFormView.isHidden = false
            
            let mainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let DesVC = mainStoryboard.instantiateViewController(withIdentifier: "addressFormViewControllerViewController") as! AddressFormViewControllerViewController
            
            
            DesVC.addressSelected = 0
            
            //DesVC.fillForm(selection: 0)
            DesVC.UI_AddressNickname?.text = "Hello Brother"
            //UI_FormView.reloadInputViews()
            
            self.navigationController?.pushViewController(DesVC, animated: true)
            
            
            break
        default:
//            UI_FormView.alpha = 1.0
//            UI_MapView.alpha = 0.0
            
            UI_ButtonFormView.isHidden = true
            UI_ButtonMapView.isHidden = false
            
            let mainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let DesVC = mainStoryboard.instantiateViewController(withIdentifier: "addressFormViewControllerViewController") as! AddressFormViewControllerViewController
            
            DesVC.addressSelected = 1
            //self.navigationController?.pushViewController(DesVC, animated: true)
            //DesVC.fillForm(selection: 1)
            //DesVC.viewDidLoad()
            
            
            break
        }
    }
    
    @IBAction func UI_ButtonShowMapView(_ sender: UIButton) {
        
        UI_FormView.alpha = 0.0
        UI_MapView.alpha = 1.0
        
        UI_ButtonMapView.isHidden = true
        UI_ButtonFormView.isHidden = false
        
    }
    
    @IBAction func UIButtonShowFormView(_ sender: UIButton) {
        
        UI_FormView.alpha = 1.0
        UI_MapView.alpha = 0.0
        
        UI_ButtonMapView.isHidden = false
        
        UI_ButtonFormView.isHidden = true
        
    }
    
  
    
    
    
}
