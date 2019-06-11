//
//  Service.swift
//  NewsApp
//
//  Created by Ahmed Kamel on 5/7/19.
//  Copyright © 2019 Ahmed Kamel. All rights reserved.
//

import Foundation
import Alamofire


public class newsService {
    
    
    // Create a public shared instance using Singleton DP
    
   static let SharedInstance = newsService()
   var errorMessage = {(message : String) -> () in }
   var arrayOfList = [Story]()
   let flag = true // true if download succeed,false otherwise
    
    typealias CompletionHandler = (_ success:Bool) -> Void
    
    
    func getListData2(url: String, Controller: UIViewController, type: Constant.K.StoryType,completionHandler: @escaping CompletionHandler) {
        
        let request = RequestManager()
        let url = url + Constant.K.API.StoryTypeChildRefMap[type]! + ".json?print=pretty"
        
        
        
        let param: Dictionary<String, Any> = [:]
        
        
        request.requestHTTPGET(url: url, parameters: param, finished: { (data) in
//           let status = response[Constant.K.Key.status] as! Bool
//            if status == true{
//                var payload : Dictionary<String, Any?>? = response[Constant.K.Key.payload] as? Dictionary
//                if payload == nil{
//                    payload = response["paylpad"] as? Dictionary
//                }
//
            
              //  let data: Array = response as? Array
            
            print(data)
            print("here")
            
            if (data != nil && data.count != 0){
                  
                for item in data.prefix(5){
                    
                    print(item)
                    print("indexhere")
                    
                    let generateItemUrl =  "https://hacker-news.firebaseio.com/v0/item/\(item).json?print=pretty"
                      
                    
                    request.requestHTTPGETJSON(url: generateItemUrl, parameters: param, finished: { (data) in
                    
                        
                      
                        
                       // let storyItems =  data as! Array<String>
                        print("workedinhere")
                        print(data)
                        
                        var dictionary = [String: Int]()
//                        for player in storyItems {
//                            dictionary[player] = 0
//
//
//
//                        }

                      //  for index in data{
                            let setData = Story(jsondict: (data as! Dictionary<String, Any?>))
                            self.arrayOfList.append(setData)
                        //}
                        
                        print("testarray")
                        
                        print(self.arrayOfList)
                        
                        
                        let flag = true // true if download succeed,false otherwise
                        
                       // self.arrayOfList.append(storyItems)
                       // print(self.arrayOfList[0].title)
                        //  print(self.arrayOfList[4].title)
                        completionHandler(flag)
                        
                     //   print(story.index(of: item))
                        print("heeere")
                    
                        
                        
                    
                    }) { (errorMsg) in
                        IndecatorView.dismiss()
                        let message = Message.init()
                        Utility.showAlert(Controller, title: message.title, message: message.message, buttonNames: [(Constant.Button.OK), (Constant.Button.Retry)], completion: { (index) in
                            if index == 1{
                                //self.apiDataList()
                            }
                        })
                    }
                    
                    
                    
                      //  let setData = SWVote(jsondict: (index as! Dictionary<String, Any?>))
                        //self.displayArray.append(setData)
                    }
                }
             //   self.tableLoad.reloadData()
            
                
        
        
        }) { (errorMsg) in
            IndecatorView.dismiss()
            let message = Message.init()
            Utility.showAlert(Controller, title: message.title, message: message.message, buttonNames: [(Constant.Button.OK), (Constant.Button.Retry)], completion: { (index) in
                if index == 1{
                    //self.apiDataList()
                }
            })
        }
        
    
    }
    
    
    func getListData(url: String,request: Constant.K.StoryType,completionHandler: @escaping CompletionHandler) {
        
        
        print("storytypes")
        print(Constant.K.API.StoryTypeChildRefMap)
        
        guard let listURL = URL(string:  url + Constant.K.API.StoryTypeChildRefMap[request]! + ".json?print=pretty")else {
            return
        }
        
        
        URLSession.shared.dataTask(with: listURL){
            (data,response,error) in
            guard let jsonData = data else { return }
            do {
                
                let jsonDataString = String(data: data!, encoding: .utf8)
                print(jsonDataString)
                
                
                ///Using Decodable data parse
                //  let decoder = JSONDecoder()
                // self.arrayOfList = try decoder.decode([Story].self, from: jsonData)
                
                // print(self.arrayOfList)
                print("222")
                
                let story = try JSONDecoder().decode([Int].self, from: data!)
                print("222")
                print(story.last)
                
                print("111")
                
                
                
                
                for item in story.prefix(5) {
                    
                    guard let listURL = URL(string: "https://hacker-news.firebaseio.com/v0/item/\(item).json?print=pretty")else {
                        return
                    }
                    
                    
                    URLSession.shared.dataTask(with: listURL){
                        (data,response,error) in
                        guard let jsonData = data else { return }
                        do {
                            
                            let jsonDataString = String(data: data!, encoding: .utf8)
                            print(jsonDataString)
                            
                            
                            ///Using Decodable data parse
                            //  let decoder = JSONDecoder()
                            // self.arrayOfList = try decoder.decode([Story].self, from: jsonData)
                            
                            // print(self.arrayOfList)
                            print("222")
                           
                          //  let storyItems = try JSONDecoder().decode(Story.self, from: data!)
                            print("222")
                            print()
                            
                            print("111")
                            let flag = true // true if download succeed,false otherwise
                            
                           // self.arrayOfList.append(storyItems)
                            print(self.arrayOfList[0].title)
                            //  print(self.arrayOfList[4].title)
                              completionHandler(flag)
                            
                            print(story.index(of: item))
                            print("heeere")
                        } catch let error {
                            print("Error ->\(error.localizedDescription)")
                            self.errorMessage(error.localizedDescription)
                        }
                        }.resume()
                    
                }
                
                
                completionHandler(true)
                //   https://hacker-news.firebaseio.com/v0/item/2921983.json?print=pretty
                
                
            } catch let error {
                 print("heeere")
                print("Error ->\(error.localizedDescription)")
                self.errorMessage(error.localizedDescription)
            }
            }.resume()
        
        
        
    }
    
    // Initialize the class
    
    init () {}
}
