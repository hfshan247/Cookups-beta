//
//  ViewController.swift
//  Cookups
//
//  Created by HF Shan on 7/22/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPageViewControllerDataSource {

    var pageViewController :UIPageViewController?
 
    var contentImages: [UIImage] = [
        UIImage(named:"BaconCheese")!,
        UIImage(named: "CreoleCrab")!,
        UIImage(named: "CaramelizedOnion")!,
        ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        createPageViewController()
        setupPageController()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    
    func createPageViewController(){
        let pageController = self.storyboard?.instantiateViewController(withIdentifier: "PageController") as! UIPageViewController
        
        pageController.dataSource = self
        
        if contentImages.count > 0{
            let firstController = getItemController(itemIndex: 0)!
            let startingViewControllers = [firstController]
            
            pageController.setViewControllers(startingViewControllers, direction: UIPageViewControllerNavigationDirection.forward, animated: false, completion: nil)
            
        }
        
        pageViewController = pageController
        addChildViewController(pageViewController!)
        self.view.addSubview(pageViewController!.view)
        pageViewController?.didMove(toParentViewController: self)
        
    }
    
    func setupPageController(){
        let appearance = UIPageControl.appearance()
        appearance.pageIndicatorTintColor        = UIColor.init(red:1, green:1, blue:1, alpha:1)
        appearance.currentPageIndicatorTintColor = UIColor.init(red:0, green:0, blue:0, alpha:1)
        appearance.backgroundColor               = UIColor.init(red:1, green:0, blue:0, alpha:1)
  
        
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        let itemController = viewController as! ImageViewController
        
        if itemController.itemIndex > 0{
            return getItemController(itemIndex: itemController.itemIndex - 1 )
        }
        return nil
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        let itemController = viewController as! ImageViewController
        
       if itemController.itemIndex + 1 < contentImages.count{
            return getItemController(itemIndex: itemController.itemIndex + 1)
        }
        
        return nil
        
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return contentImages.count
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
    func currentControllerIndex() -> Int {
        let pageItemController = self.currentController()
        if let controller = pageItemController as? ImageViewController{
            return controller.itemIndex
        }
        return -1
    }
    
    func currentController() -> UIViewController? {
        if(self.pageViewController?.viewControllers?.count)! > 0 {
            return self.pageViewController?.viewControllers![0]
        }
    
        return nil
    }
   
    func getItemController(itemIndex: Int) -> ImageViewController?{
        if itemIndex < contentImages.count{
            let pageItemController = self.storyboard?.instantiateViewController(withIdentifier: "ImageController") as! ImageViewController
            
            pageItemController.itemIndex = itemIndex
            pageItemController.imageName = contentImages[itemIndex]
            
            return pageItemController
            
        }
        return nil
        
        
        
    }
    
    @IBAction func Open_User_Profile(_ sender: UIButton) {
        let mainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let DesVC = mainStoryboard.instantiateViewController(withIdentifier: "sellerItemsProfileViewController") as! SellerItemsProfileViewController
        
        self.navigationController?.pushViewController(DesVC, animated: true)
    }
    

    
}
