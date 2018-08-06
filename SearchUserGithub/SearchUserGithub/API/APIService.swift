//
//  GithubAPI.swift
//  SearchUserGithub
//
//  Created by ThinhLe on 8/6/18.
//  Copyright © 2018 ThinhLe. All rights reserved.
//

import Foundation
import Alamofire

struct APIService {
    
    static func request(keyword: String, limit: Int, completion: @escaping ([User])->Void)
    {
        
        let baseURL = "https://api.github.com/search/users?"
        let url = "\(baseURL)q=\(keyword)&per_page=\(limit)"
        Alamofire.request(url).responseString { (dataResponse) in
            if let json = dataResponse.result.value
            {
                let response = SearchResponse(JSONString: json)
                if let items = response?.items
                {
                    
                    var users = [User]()
                    for user in items
                    {
                        users.append(user)
                    }
                }
                
            }
        }
        
    }
}
