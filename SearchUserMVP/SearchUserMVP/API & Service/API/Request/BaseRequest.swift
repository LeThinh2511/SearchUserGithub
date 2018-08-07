//
//  BaseRequest.swift
//  SearchUserMVP
//
//  Created by ThinhLe on 8/7/18.
//  Copyright © 2018 ThinhLe. All rights reserved.
//

import Foundation
import Alamofire

class BaseRequest
{
    var url: URL
    var method: HTTPMethod
    var body: [String: Any]?
    
    init(url: URL) {
        self.url = url
        self.method = .get
    }
    
    init(url: URL, method: HTTPMethod) {
        self.url = url
        self.method = method
    }
    
    init(url: URL, method: HTTPMethod, body: [String: Any]) {
        self.url = url
        self.method = method
        self.body = body
    }
    
//    init(urlString: String, method: HTTPMethod, body: [String: Any]?)
//    {
//        let url = URL(string: urlString)
//        if let url = url
//        {
//            self.url = url
//            self.method = method
//            self.body = body
//        }
//        else
//        {
//            print("Error: cannot construct url from string!")
//            self.url =
//        }
//    }
}
