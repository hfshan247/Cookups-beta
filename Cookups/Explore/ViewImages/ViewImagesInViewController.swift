//
//  ViewImagesInViewController.swift
//  Cookups
//
//  Created by HF Shan on 7/26/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class ViewImagesInViewController: UIViewController {

    var itemIndex: Int = 0
    var imageName: String = "" {
        didSet{
            if let imageView = UI_ContentImageView{
                imageView.image = UIImage(named: imageName)
                print(imageName)
            }
        }
    }
    
    
    @IBOutlet weak var UI_ContentImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

}