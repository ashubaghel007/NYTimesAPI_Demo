//
//  APIManager.swift
//  NYDemoApp
//
//  Created by Ashish Baghel on 14/03/19.
//  Copyright © 2019 Ashish Baghel. All rights reserved.
//

import Foundation
import UIKit
import Alamofire

class APIManager {
    static let sharedInstance = APIManager()
    
    public func getJSON(urlString : String, completionHandler: @escaping (AnyObject, Error?) -> Void) {
        Alamofire.request(urlString).responseJSON { response in
            if let json = response.result.value {
                print("JSON: \(json)") // serialized json response
                completionHandler(json as AnyObject, response.error)
            }
        }
    }

}


// this is the change done on branchFromMaster branch -- now let c
