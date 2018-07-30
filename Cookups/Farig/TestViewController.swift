//
//  TestViewController.swift
//  Cookups
//
//  Created by HF Shan on 7/22/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class TestViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var UI_TableView: UITableView!
    
    
    var Headerview : UIView!
    var NewHeaderLayer : CAShapeLayer!
    
    private let Headerheight: CGFloat = 420
    private let Headercut : CGFloat = 50
    
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
        "Saltimbocca Burger"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.UpdateView()
        
        UI_TableView.delegate = self
        UI_TableView.dataSource = self
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.tintColor = UIColor.black
        
        
        // Order View
        let orderView: UIView =  OrderUIView()
        orderView.isHidden = true
        
        
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
        return burgerTitles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableCell = UI_TableView.dequeueReusableCell(withIdentifier: "Cell")
        tableCell?.textLabel?.text = burgerTitles[indexPath.row]
        return tableCell!
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
