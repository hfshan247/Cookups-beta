//
//  BackupViewController.swift
//  Cookups
//
//  Created by HF Shan on 7/22/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class BackupViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var product: Product = Product()
    var user: User = User()
    
    @IBOutlet weak var UI_TableView: UITableView!
    @IBOutlet var UI_ImagesExplore: [UIView]!
    @IBOutlet weak var UI_LabelPrice: UILabel!
    @IBOutlet weak var UI_ImageLiked: UIBarButtonItem!
    
    var Headerview : UIView!
    var NewHeaderLayer : CAShapeLayer!
    
    private let Headerheight: CGFloat = 250
    private let Headercut : CGFloat = 0
    
    
    
    
    let burgerTitles = [
        "Cheese Burger Burger",
        "Bacon Cheese Burger",
        "Caramelized Onion Burger",
        "Juicy Lucy Burger",
        "English Cheddar Burger",
        "Holsin Burger Burger",
        "Chipotle Corn Burger",
        "Thai Pork Burger",
        "Creole Crab Burger",
        "Middle Eastern Burger",
        "Saltimbocca Burger",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Settingup Data
        user = UsersController.getUser(id: product.userID!)
        
        // Do any additional setup after loading the view.
        
        self.UpdateView()
        
        // Hiding Tabbar
        self.tabBarController?.tabBar.isHidden = true
        
        // Printing Data
        
        UI_TableView.delegate = self
        UI_TableView.dataSource = self
        
        UI_TableView.estimatedRowHeight = UI_TableView.rowHeight
        UI_TableView.rowHeight = UITableViewAutomaticDimension
        
        UI_TableView.allowsSelection = false
        
        // Settingup view
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.tintColor = UIColor.black
        
        
        // Order View
        let orderView: UIView =  OrderUIView()
        orderView.isHidden = true
        
        //ViewController.contentImages = product.images!
        
        // Preview Product:
        UI_LabelPrice.text = "Rs. " +  String(describing: product.price!)
        UI_ImageLiked.image = product.liked
    }
    
    func UpdateView(){
        UI_TableView.backgroundColor = UIColor.white
        Headerview = UI_TableView.tableHeaderView
        UI_TableView.tableHeaderView = nil
        UI_TableView.rowHeight = UITableViewAutomaticDimension
        UI_TableView.addSubview(Headerview)
        
        NewHeaderLayer = CAShapeLayer()
        NewHeaderLayer.fillColor = UIColor.black.cgColor
        Headerview.layer.mask = NewHeaderLayer
        
        let newHeight = Headerheight - Headercut / 2
        UI_TableView.contentInset = UIEdgeInsets(top: newHeight, left: 0, bottom: 0, right: 0)
        UI_TableView.contentOffset = CGPoint(x: 0, y: -newHeight)
        
        self.Setupnewview()
        
    }
    
    func Setupnewview(){
        let newheight = Headerheight - Headercut / 2
        var getheaderframe = CGRect(x: 0, y: -newheight, width: UI_TableView.bounds.width, height: Headerheight)
        if UI_TableView.contentOffset.y < newheight{
            getheaderframe.origin.y = UI_TableView.contentOffset.y
            getheaderframe.size.height = -UI_TableView.contentOffset.y + Headercut / 2
        }
        
        Headerview.frame = getheaderframe
        let cutdirection = UIBezierPath()
        cutdirection.move(to: CGPoint(x: 0, y: 0))
        cutdirection.addLine(to: CGPoint(x: getheaderframe.width, y: 0))
        cutdirection.addLine(to: CGPoint(x: getheaderframe.width, y: getheaderframe.height))
        cutdirection.addLine(to: CGPoint(x: 0, y: getheaderframe.height - Headercut))
        NewHeaderLayer.path = cutdirection.cgPath
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.UI_TableView.decelerationRate = UIScrollViewDecelerationRateFast
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        self.Setupnewview()
        
        var offset = scrollView.contentOffset.y / 150
        if offset > -0.5 {
            UIView.animate(withDuration: 0.2, animations: {
                offset = 1
                let color = UIColor.init(red: 1, green: 1, blue: 1, alpha: offset)
                let navigationcolor = UIColor.init(hue: 0, saturation: offset, brightness: 1, alpha: 1)
                
                self.navigationController?.navigationBar.tintColor = navigationcolor
                self.navigationController?.navigationBar.backgroundColor = color
                UIApplication.shared.statusBarview?.backgroundColor = color
                
                self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: navigationcolor]
                self.navigationController?.navigationBar.barStyle = .default
                
            })
        }
        else{
            UIView.animate(withDuration: 0.2, animations: {
                let color = UIColor.init(red: 1, green: 1, blue: 1, alpha: offset)
                self.navigationController?.navigationBar.tintColor = UIColor.white
                self.navigationController?.navigationBar.backgroundColor = color
                UIApplication.shared.statusBarview?.backgroundColor = color
                
                self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
                self.navigationController?.navigationBar.barStyle = .black
                
            })
        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let tableCell = UI_TableView.dequeueReusableCell(withIdentifier: "Cell")
//        tableCell?.textLabel?.text = burgerTitles[indexPath.row]
//        return tableCell!
        
        if indexPath.row == 0 {
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "Cell_1") as! FirstTableViewCell
            
            cell1.UI_ItemTitle?.text    = product.title
            cell1.UI_ItemDate?.text     = product.date
            cell1.UI_ItemTimeSpam?.text = product.time
            
            
            return cell1
        }
        else if indexPath.row == 1 {
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "Cell_2") as! SecondTableViewCell
            
            cell2.UI_ItemLocation?.text = product.location
            cell2.UI_ItemRatings?.text  = product.ratingsDescription
            cell2.UI_ItemUserFullName.setTitle(user.userName, for: .normal)
            cell2.UI_ItemUserProfileImage.image = user.userPhoto
            cell2.UI_ImageRatings1.image = product.stars?[0]
            cell2.UI_ImageRatings2.image = product.stars?[1]
            cell2.UI_ImageRatings3.image = product.stars?[2]
            cell2.UI_ImageRatings4.image = product.stars?[3]
            cell2.UI_ImageRatings5.image = product.stars?[4]
            
            return cell2
        }
        else if indexPath.row == 2{

            
            let cell3 = tableView.dequeueReusableCell(withIdentifier: "Cell_3") as! ThirdTableViewCell
            
            cell3.UI_ItemPortion?.text       = product.portions
            cell3.UI_ItemCategory?.text      = product.category
            cell3.UI_ItemUsersCapacity?.text = product.remainings
            
            return cell3
    }
        
            
            let cell4: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell_4")
            
            cell4.textLabel?.text = product.description
            cell4.textLabel?.numberOfLines = 0
            return cell4
            
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            
            
            return 100
        }
        else if indexPath.row == 1 {
            
            
            return 85
        }
        else if indexPath.row == 2 {
            
            
            return 85
        }
        
        return UITableViewAutomaticDimension
    }
    
    @IBAction func View_User_Profile(_ sender: UIButton) {
        let mainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let DesVC = mainStoryboard.instantiateViewController(withIdentifier: "sellerItemsProfileViewController") as! SellerItemsProfileViewController
        
        DesVC.selected_seller = UsersController.getUser(id: product.userID!)

        self.navigationController?.pushViewController(DesVC, animated: true)
    }
    
    @IBAction func UI_ButtonOrderNow(_ sender: UIButton) {
        let mainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let DesVC = mainStoryboard.instantiateViewController(withIdentifier: "placeOrderViewController") as! PlaceOrderViewController
        
        RuntimeApp.product = product
        
        self.navigationController?.pushViewController(DesVC, animated: true)
    }
   
}
