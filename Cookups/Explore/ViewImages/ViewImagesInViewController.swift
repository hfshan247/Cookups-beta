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
        UI_ContentImageView.image = UIImage(named: imageName)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func btnExit(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
}
