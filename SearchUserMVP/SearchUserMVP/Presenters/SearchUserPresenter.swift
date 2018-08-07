//
//  SearchUserPresenter.swift
//  SearchUserMVP
//
//  Created by ThinhLe on 8/7/18.
//  Copyright © 2018 ThinhLe. All rights reserved.
//

import Foundation
import UIKit

protocol SearchUserViewProtocol
{
    init(view: SearchUserView)
    func searchUser(keyword: String, limit: Int)
}

class SearchUserPresenter: SearchUserViewProtocol
{
    unowned var view: SearchUserView
    required init(view: SearchUserView)
    {
        self.view = view
    }
    
    func searchUser(keyword: String, limit: Int)
    {
        APIService.request(keyword: keyword, limit: limit) { (users) in
            if users.count == 0
            {
                let alert = UIAlertController(title: "Result", message: "return no user!", preferredStyle: .alert)
                let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
                alert.addAction(cancelAction)
                self.view.showAlertController(alertController: alert)
            }
            else
            {
                self.view.showUsers(users: users)
            }
        }
    }
}
