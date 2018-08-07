//
//  SearchUserRequest.swift
//  SearchUserMVP
//
//  Created by ThinhLe on 8/7/18.
//  Copyright © 2018 ThinhLe. All rights reserved.
//

import Foundation
import Alamofire

enum URLResult
{
    case success(URL)
    case failure(Error)
}

enum URLError: Error
{
    case URLStringIncorrect
}


enum FieldGithub: String
{
    case searchUser = "/search/users"
}

class SearchRequest: BaseRequest
{
    
    static let baseURL = "https://api.github.com"
    
    required init(keyword: String, limit: Int)
    {
        let body: [String: Any]  = [
            "per_page": limit,
            "q": keyword
        ]
        let urlString = SearchRequest.baseURL + "/search/users"
        let url = URL(string: urlString)
        super.init(url: url!, method: .get, body: body)
    }
    
//    func buildURL(field: FieldGithub) -> URLResult
//    {
//        let urlString = RequestGithub.baseURL + field.rawValue
//        let url = URL(string: urlString)
//        if let url = url
//        {
//            return .success(url)
//        }
//        else
//        {
//            return .failure(URLError.URLStringIncorrect)
//        }
//    }
}







