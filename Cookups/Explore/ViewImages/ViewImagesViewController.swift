//
//  ViewImagesViewController.swift
//  Cookups
//
//  Created by HF Shan on 7/26/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class ViewImagesViewController: UIViewController, UIPageViewControllerDataSource {

    var pageViewController :UIPageViewController?
    
    var contentImages: [UIImage] = [
        UIImage(named: "CreoleCrab")!,
        UIImage(named: "BaconCheese")!,
        UIImage(named: "CaramelizedOnion")!,
        ]
    
    var currentImage = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentImages = RuntimeApp.product.images!
        // Do any additional setup after loading the view.
        
        createPageViewController()
        setupPageController()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    func createPageViewController(){
        let pageController = self.storyboard?.instantiateViewController(withIdentifier: "viewImagesPageViewController") as! UIPageViewController
        
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
        appearance.currentPageIndicatorTintColor = UIColor.init(red:1, green:0, blue:0, alpha:1)
        appearance.backgroundColor               = UIColor.init(red:0, green:0, blue:0, alpha:1)

        
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        let itemController = viewController as! ViewImagesInViewController
        
        if itemController.itemIndex > 0{
            return getItemController(itemIndex: itemController.itemIndex - 1 )
        }
        return nil
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        let itemController = viewController as! ViewImagesInViewController
        
        if itemController.itemIndex + 1 < contentImages.count{
            currentImage = itemController.itemIndex + 1
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
        if let controller = pageItemController as? ViewImagesInViewController{
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
    
    func getItemController(itemIndex: Int) -> ViewImagesInViewController?{
        if itemIndex < contentImages.count{
            let pageItemController = self.storyboard?.instantiateViewController(withIdentifier: "viewImagesInViewController") as! ViewImagesInViewController
            
            pageItemController.itemIndex = itemIndex
            pageItemController.image = contentImages[itemIndex]
            
            return pageItemController
            
        }
        return nil
    }
    
    @IBAction func btnExit(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }

}
