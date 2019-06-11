//
//  HNViewModel.swift
//  NewsApp
//
//  Created by Eng. Ahmed Kamel 0_0 on 4/25/19.
//  Copyright © 2019 Ahmed Kamel. All rights reserved.
//

import Foundation

import UIKit
class HNViewModel {
    
    ///closure use for notifi
    var reloadList = {() -> () in }
    var errorMessage = {(message : String) -> () in }
    
    ///Array of List Model class
    var arrayOfList = [Story]()
    
    
    // Retrive Top Stories From Request Manager
    
    func getTopStories(Controller:UIViewController, completionHandler: @escaping (_ success: Bool) -> Void){
        
         self.arrayOfList.removeAll()
        
        
        newsService.SharedInstance.getListData2(url: Constant.K.Domain.ServerUrl, Controller: Controller, type: Constant.K.API.DefaultStoryType) { (success) in
            
            if success {
                
                print("now Works")
                completionHandler(true)
                
            }
            
            
        }
        
        
//        newsService.SharedInstance.getListData(url: Constant.K.Domain.ServerUrl, request: Constant.K.API.DefaultStoryType) { (success) in
//
//
//            if success {
//
//                print("good")
//
//                completionHandler(true)
//
//            }
//
//
//        }
//
    }    ///get data from api
    
    
    
    // Retrive Newest Stories From Request Manager
    
    func getNewStories(completionHandler: @escaping (_ success: Bool) -> Void){
        
        
         self.arrayOfList.removeAll()
        
        newsService.SharedInstance.getListData(url: Constant.K.Domain.ServerUrl, request: Constant.K.StoryType.new) { (success) in
            
            
            if success {
                
                print("good")
                
                completionHandler(true)
                
            }
            
            
        }
        
    }    ///get data from api
    
    
    // Retrive Recent Stories From Request Manager
    
    func getRecentStories(completionHandler: @escaping (_ success: Bool) -> Void){
        
        
         self.arrayOfList.removeAll()
        
        newsService.SharedInstance.getListData(url: Constant.K.Domain.ServerUrl, request: Constant.K.StoryType.show) { (success) in
            
            
            if success {
                
                print("good")
                
                completionHandler(true)
                
            }
            
            
        }
        
    }    ///get data from api
    
    
    
    
}
