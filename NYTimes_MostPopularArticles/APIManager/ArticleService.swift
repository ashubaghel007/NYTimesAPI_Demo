//
//  ArticleService.swift
//  NYDemoApp
//
//  Created by Ashish Baghel on 14/03/19.
//  Copyright © 2019 Ashish Baghel. All rights reserved.
//

import Foundation
import UIKit


class  ArticleService {

    public func getAllArticlesForSection(_ section :String , timePeriod : Int , completionHandler: @escaping (MostViewedResponse?, Error?) -> Void) {
            
             let apiUrl = self.getAPIUrlForSection(section, timePeriod: timePeriod)
             APIManager.sharedInstance.getJSON(urlString: apiUrl, completionHandler: {obj, err in
                
                let responseModel = MostViewedResponse(dictionary: obj as! NSDictionary)
                completionHandler(responseModel, err)
            })
        }
 
    func getAPIUrlForSection(_ section : String , timePeriod : Int) -> String  {
     
        let  path =     Constants.API.BaseURL + "\(section)/\(timePeriod).json"
       return path + "?api-key=" +  Constants.API.API_Key
    }
    
}



