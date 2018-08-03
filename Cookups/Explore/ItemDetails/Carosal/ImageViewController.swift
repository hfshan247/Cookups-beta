//
//  ImageViewController.swift
//  Cookups
//
//  Created by HF Shan on 7/22/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    
    var itemIndex: Int = 0
//    var imageName: String = "" {
//        didSet{
//            if let imageView = UI_ContentImageView{
//                imageView.image = UIImage(named: imageName)
//            }
//        }
//    }
    
    var currentIndex = 0
    
    var imageName: UIImage = UIImage(named: "HolsinBurger")!
    
    @IBOutlet weak var UI_ContentImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        UI_ContentImageView.image = imageName
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        UI_ContentImageView.isUserInteractionEnabled = true
        UI_ContentImageView.addGestureRecognizer(tapGestureRecognizer)
        
    }
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        
        // Your action
        let imagePopup = self.storyboard?.instantiateViewController(withIdentifier: "viewImagesViewController") as! ViewImagesViewController
        self.present(imagePopup, animated: true)
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
