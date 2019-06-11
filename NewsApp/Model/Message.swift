//
//  MISKMessage.swift
//  Misk
//
//  Created by Sumit Kumar Gupta on 27/02/18.
//  Copyright © 2018 Sumit Kumar Gupta. All rights reserved.
//

import UIKit

class Message: NSObject {
    
    var title    : String?
    var message  : String?
    
    init(jsonDict dict: Dictionary<String, Any?>?) {
        super.init()
        guard let dict = dict else {return}
        self.title   = dict[Constant.K.Key.error] as? String
        self.message = dict[Constant.K.Key.message] as? String
        
        if self.title == nil{
            self.title   = dict[Constant.K.Key.title] as? String
        }
    }
    
    override init() {
        super.init()
        self.title   = Constant.K.Message.Oops
        self.message = Constant.K.Message.NoInternetMsg
    }
}
