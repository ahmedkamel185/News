//
//  IndecatorView.swift
//  Misk
//
//  Created by Sumit Kumar Gupta on 24/02/18.
//  Copyright © 2018 Sumit Kumar Gupta. All rights reserved.
//

import UIKit

class IndecatorView: UIView {
    
    // MARK: - Properties
    
    private static var sharedIndecatorView: IndecatorView = {
        let activityIndecatorView = UIActivityIndicatorView()
        
        let indecatorView = IndecatorView(activityIndecator: activityIndecatorView)
        
        // Configuration
        // ...
        
        return indecatorView
    }()
    
    // MARK: -
    
    let activityIndecator: UIActivityIndicatorView
    
    // Initialization
    
    private init(activityIndecator: UIActivityIndicatorView) {
        self.activityIndecator = activityIndecator
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let window = appDelegate.window!
        super.init(frame: window.bounds)
        
        self.addSubview(self.activityIndecator)
        self.activityIndecator.center = self.center
        self.activityIndecator.color = UIColor.lightGray
        activityIndecator.activityIndicatorViewStyle = .whiteLarge
        self.backgroundColor = UIColor.black.withAlphaComponent(0.15)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Accessors
    
    class func shared() -> IndecatorView {
        return sharedIndecatorView
    }
    
    class func show() {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let window = appDelegate.window!
        if sharedIndecatorView.superview == nil {
            window.addSubview(sharedIndecatorView)
        }
        sharedIndecatorView.activityIndecator.startAnimating()
    }
    
    class func dismiss() {
        sharedIndecatorView.removeFromSuperview()
        sharedIndecatorView.activityIndecator.stopAnimating()
    }
}
