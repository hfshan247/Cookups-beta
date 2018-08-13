//
//  CookupsNavigationBar.swift
//  Cookups
//
//  Created by HF Shan on 8/6/18.
//  Copyright © 2018 hussain farooq. All rights reserved.
//

import UIKit

class CookupsNavigationBar: UINavigationBar {
    
    // MARK: - Properties
    var borderColor: UIColor? {
        set {
            borderView.backgroundColor = UIColor.green
        }
        
        get {
            return borderView.backgroundColor
        }
    }
    
    private let borderView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        shadowImage = UIImage()
        
        addSubview(borderView)
        
        NSLayoutConstraint.activate([
            borderView.topAnchor.constraint(equalTo: bottomAnchor),
            borderView.leadingAnchor.constraint(equalTo: leadingAnchor),
            borderView.trailingAnchor.constraint(equalTo: trailingAnchor)
            ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
