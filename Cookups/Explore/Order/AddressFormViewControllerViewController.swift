//
//  AddressFormViewControllerViewController.swift
//  Cookups
//
//  Created by HF Shan on 7/24/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class AddressFormViewControllerViewController: UIViewController {
    
    var addressSelected: Int = 0
    
    
    @IBOutlet weak var UI_AddressNickname: UITextField!

    @IBOutlet weak var UI_AddressApartment: UITextField!

    @IBOutlet weak var UI_AddressHouseNumber: UITextField!

    @IBOutlet weak var UI_AddressSteetAddress: UITextField!

    @IBOutlet weak var UI_AddressNearby: UITextField!

    //Refresher
    var refresher: UIRefreshControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        fillForm(selection: addressSelected)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func fillForm(selection:Int){

        switch selection {

        case 0:
            // Print Home Address
            fillForm(nickname: "My Home Name", apartment: "Residence", house: "122", streetAddress: "Gulshan Colony", area: "Blue Area")
            break
        case 1:
            // Print Office Address
           fillForm(nickname: "My Office Name", apartment: "CIE Building", house: "122", streetAddress: "Street No. 4", area: "Sector H-12")
            break

        case 2:
            // Clear All values
            fillForm(nickname: "", apartment: "", house: "", streetAddress: "", area: "")
            break
        default:
            // Show Error
            break
        }
    }

    func fillForm(nickname: String , apartment: String, house: String, streetAddress: String, area: String){
        UI_AddressNickname.text = nickname
        UI_AddressApartment?.text = apartment
        UI_AddressHouseNumber?.text = house
        UI_AddressSteetAddress?.text = streetAddress
        UI_AddressNearby?.text = area


    }

    
    
}
