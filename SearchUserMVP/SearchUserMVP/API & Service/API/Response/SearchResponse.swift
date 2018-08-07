//
//  SearchResponse.swift
//  SearchUserMVP
//
//  Created by ThinhLe on 8/7/18.
//  Copyright © 2018 ThinhLe. All rights reserved.
//

import Foundation
import ObjectMapper

class SearchResponse : Mappable {
    
    var totalCount: Int?
    var items = [User]()
    
    required init(map: Map) {
        mapping(map: map)
    }
    
    func mapping(map: Map) {
        totalCount <- map["total_count"]
        items <- map["items"]
    }
}
