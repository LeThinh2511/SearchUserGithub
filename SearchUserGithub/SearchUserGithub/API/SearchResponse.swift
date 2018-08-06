//
//  SearchResponse.swift
//  SearchUserGithub
//
//  Created by ThinhLe on 8/6/18.
//  Copyright © 2018 ThinhLe. All rights reserved.
//

import Foundation
import ObjectMapper

class SearchResponse: Mappable
{
    var incomplete_results: Int?
    var items = [User]()
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        incomplete_results <- map["incomplete_results"]
        items <- map["items"]
    }
    
    
}
