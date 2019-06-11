 
 import Alamofire
 
 class RequestManager: NSObject {
    
 
    func requestHTTPGET(url:String, parameters:Dictionary<String,Any>?, finished:@escaping (Array<Any>)->Void, failed:@escaping (String)->Void) {
    // HTTP Get request
    
    let request = Alamofire.request(url, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil).responseJSON { (response:DataResponse<Any>) in
        
        //print(response)
      //  print(response.result.value)
        switch(response.result) {
        case .success(_):
            if var data = response.result.value as? Array<Any>{
                
                print("lookhere")
             //   print(data)
                // let authStatus = data[Constant.K.Key.authrizedStatus] as? String
                
                finished(data)
            }
            break
            
        case .failure(_):
            if let error = response.result.error {
                failed(error.localizedDescription)
                //print(error.localizedDescription)
            }
            break
        }
    }
    //print(request)
 }
 
 /**
  Make a HTTP POST request and returns with either response or failure
  - Parameter url Request URL
  - Parameter parameters Request Parameters
  */
 func requestHTTPPOST(url:String, parameters:Dictionary<String,Any>, finished:@escaping (Dictionary<String, Any>)->Void, failed:@escaping (String)->Void) {
    // HTTP POST request
    print(parameters)
    
    let request =  Alamofire.request(url, method: .post, parameters: parameters, encoding: URLEncoding.default, headers: nil).responseJSON { (response:DataResponse<Any>) in
        
        
        print(response)
        
        switch(response.result) {
        case .success(_):
            
            if var data = response.result.value as? Dictionary<String, Any>{
                //print(data)
               // let authStatus = data[Constant.K.Key.authrizedStatus] as? String
                
                finished(data)
                
                //                    if authStatus == "1"{
                //                        finished(data)
                //                    }
                //                    else{
                //                        //guard let errorDict: Dictionary<String, Any?>  = response[Constant.K.Key.error] as? Dictionary else { return }
                //                        var dictMsg = Dictionary<String, Any>.init()
                //                        dictMsg[Constant.K.Key.error] = (Constant.Message.SessionTimeout).localized
                //                        dictMsg[Constant.K.Key.message] = (Constant.Message.SessionExpired).localized
                //                        data[Constant.K.Key.status] = "0"
                //                        data[Constant.K.Key.error] = dictMsg
                //                        data[Constant.K.Key.status] = false
                //                        finished(data)
                //                    }
            }
            break
            
        case .failure(_):
            if let error = response.result.error {
                failed(error.localizedDescription)
                //print(error)
            }
            break
        }
    }
    //print(request)
 }
 
 
 /**
  Make a HTTP POST request and returns with either response or failure
  - Parameter url Request URL
  - Parameter parameters Request Parameters
  */
    func requestHTTPGETJSON(url:String, parameters:Dictionary<String,Any>?, finished:@escaping (Dictionary<String, Any>)->Void, failed:@escaping (String)->Void) {
        // HTTP Get request
        
        let request = Alamofire.request(url, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil).responseJSON { (response:DataResponse<Any>) in
            
            //print(response)
            //  print(response.result.value)
            switch(response.result) {
            case .success(_):
                if var data = response.result.value as? Dictionary<String, Any>{
                    
                    print("lookhere")
                      print(data)
                    // let authStatus = data[Constant.K.Key.authrizedStatus] as? String
                    
                    finished(data)
                }
                break
                
            case .failure(_):
                if let error = response.result.error {
                    failed(error.localizedDescription)
                    //print(error.localizedDescription)
                }
                break
            }
        }
        //print(request)
    } }
