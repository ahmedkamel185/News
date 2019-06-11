//
//  File.swift
//  NewsApp
//
//  Created by Ahmed Kamel on 4/25/19.
//  Copyright © 2019 Ahmed Kamel. All rights reserved.
//

import Foundation

// MARK: Structs

class Story: NSObject {
    let title: String
    let url: String?
    let by: String
    let score: Int
    
    init(jsondict dict:Dictionary<String, Any?>?){
        
        self.title  = (dict!["title"] as? String)!
        self.url    = dict!["url"] as? String
        self.by     = (dict!["by"] as? String)!
        self.score  = (dict!["score"] as? Int)!
        
        
    }

    
}


