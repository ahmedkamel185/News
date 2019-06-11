//
//  Utility.swift
//  MiskTeacher
//
//  Created by Eng. Ahmed Kamel 0_0 on 28/05/19.
//  Copyright © 2019 Eng. Ahmed Kamel. All rights reserved.
//

import UIKit

class Utility: NSObject {
    
    static func showAlert (_ viewController: UIViewController?, title: String?, message: String?, buttonNames:[String], completion:@escaping((Int)->Void)){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        for index in 0..<buttonNames.count{
            let name = buttonNames[index]
            let action = UIAlertAction(title: name, style: .default, handler: { (UIAlertAction) in
                completion(index)
                alert.dismiss(animated: true, completion: {
                })
            })
            alert.addAction(action)
        }
        if viewController == nil{
            let appDelegate = UIApplication.shared.delegate as? AppDelegate
            appDelegate?.window?.rootViewController?.present(alert, animated: true, completion: nil)
        }else{
            viewController!.present(alert, animated: true, completion: nil)
        }
    }
    
    static func showActionSheet (_ viewController: UIViewController?, title: String?, message: String?, sourceRect: CGRect, buttonNames:[String], completion:@escaping((Int)->Void)){
        Utility.showActionSheet(viewController, title: title, message: message, destructiveIndex: -1, sourceRect: sourceRect, buttonNames: buttonNames, completion: completion)
    }
    
    static func showActionSheet (_ viewController: UIViewController?, title: String?, message: String?, destructiveIndex: Int, sourceRect: CGRect, buttonNames:[String], completion:@escaping((Int)->Void)){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        for index in 0..<buttonNames.count{
            let name = buttonNames[index]
            
            if index == destructiveIndex{
                let action = UIAlertAction(title: name, style: .destructive, handler: { (UIAlertAction) in
                    completion(index)
                    alert.dismiss(animated: true, completion: {
                    })
                })
                alert.addAction(action)
            }else{
                let action = UIAlertAction(title: name, style: .default, handler: { (UIAlertAction) in
                    completion(index)
                    alert.dismiss(animated: true, completion: {
                    })
                })
                
                alert.addAction(action)
            }
        }
        let action = UIAlertAction(title: Constant.Button.Cancel, style: .cancel, handler: { (UIAlertAction) in
            completion(buttonNames.count)
            alert.dismiss(animated: true, completion: {
            })
        })
        alert.addAction(action)
        
        
        var controller = viewController
        
        if controller == nil{
            let appDelegate = UIApplication.shared.delegate as? AppDelegate
            controller = appDelegate?.window?.rootViewController!
        }
        alert.popoverPresentationController?.sourceView = controller?.view;
        alert.popoverPresentationController?.sourceRect = sourceRect;
        
        controller!.present(alert, animated: true, completion: nil)
    }
    
    static func showMessage (_ message: String?){
        Utility.showAlert( nil, title: nil, message: message, buttonNames: [Constant.Button.OK]) { (index) in
        }
    }
    
    static func showAlertViewController(with title:String?,message:String?,style:UIAlertControllerStyle,complitionHandler:@escaping (Bool)->Void) {
        
        let theAppDelegate = UIApplication.shared.delegate!
        let navigationController = theAppDelegate.window??.rootViewController as! UINavigationController
        let lastViewController = navigationController.viewControllers.last
        
        if let presentedViewController = lastViewController{
            let alertViewController = UIAlertController.init(title: title, message: message, preferredStyle: style)
            //            //Ok Action
            //            let okAction = UIAlertAction.init(title: "OK".localized, style: .default) { (action) in
            //                complitionHandler(true)
            //                alertViewController.dismiss(animated: true, completion: nil)
            //            }
            //            //Cancel Action
            //            let cancelAction = UIAlertAction.init(title: "Cancel".localized, style: .cancel) { (action) in
            //                complitionHandler(true)
            //                alertViewController.dismiss(animated: true, completion: nil)
            //            }
            
            // alertViewController.addAction(okAction)
            //alertViewController.addAction(cancelAction)
            presentedViewController.present(alertViewController, animated: true, completion: {
                
            })
        }
    }
    
    static func getDateFromString(dateString: String, currentFormat: String, localeIndentifier: String = "en_US_POSIX") -> Date?{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = currentFormat
        dateFormatter.locale = Locale.init(identifier: localeIndentifier)
        let date = dateFormatter.date(from: dateString)
        return date
    }
    
    static func getDateString(date: Date, fromat: String) -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = fromat
        dateFormatter.locale = Locale.init(identifier: "en_US_POSIX")
        return dateFormatter.string(from: date)
    }
}
