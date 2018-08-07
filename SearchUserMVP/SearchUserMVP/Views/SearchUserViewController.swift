//
//  ViewController.swift
//  SearchUserMVP
//
//  Created by ThinhLe on 8/7/18.
//  Copyright © 2018 ThinhLe. All rights reserved.
//

import UIKit

protocol SearchUserView: class
{
    func showUsers(users: [User])
    func showAlertController(alertController: UIAlertController)
}

class SearchUserViewController: UIViewController, SearchUserView
{
    var presenter: SearchUserViewProtocol!
    
    @IBOutlet weak var keywordTF: UITextField!
    @IBOutlet weak var limitTF: UITextField!
    
    @IBAction func searchUser(_ sender: Any)
    {
        if let keyword = keywordTF.text, let limit = limitTF.text, let limitUsers = Int(limit)
        {
            self.presenter.searchUser(keyword: keyword, limit: limitUsers)
        }
    }
    
    func showUsers(users: [User])
    {
        let searchResultVC = SearchResultViewController()
        searchResultVC.users = users
        self.navigationController?.pushViewController(searchResultVC, animated: true)
    }
    
    
    func showAlertController(alertController: UIAlertController) {
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        self.navigationItem.title = "Search"
        self.presenter = SearchUserPresenter(view: self)
    }
}


