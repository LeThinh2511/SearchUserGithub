//
//  User.swift
//  SearchUserGithub
//
//  Created by ThinhLe on 8/6/18.
//  Copyright © 2018 ThinhLe. All rights reserved.
//

import Foundation
import ObjectMapper

class User: Mappable {
    
    var login: String?
    var id: Int?
    var avatar_url: String?
    var url: String?
    var type: String?
    var score: Double?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        login <- map["login"]
        id <- map["id"]
        avatar_url <- map["avatar_url"]
        url <- map["url"]
        type <- map["type"]
        score <- map["score"]
    }
}
