//
//  ViewController.swift
//  SearchUserGithub
//
//  Created by ThinhLe on 8/6/18.
//  Copyright © 2018 ThinhLe. All rights reserved.
//

import UIKit

class SearchUserViewController: UIViewController {
    
    @IBOutlet weak var keywordTF: UITextField!
    @IBOutlet weak var limitTF: UITextField!
    
    @IBAction func searchUser(_ sender: Any)
    {
        let keyword = keywordTF.text
        let limit = limitTF.text
        if let keyword = keyword, let limit = limit
        {
            if let limitNumber = Int(limit)
            {
                APIService.request(keyword: keyword, limit: limitNumber) { (users) in
                    let searchResultVC = SearchResultViewController()
                    searchResultVC.users = users
                self.navigationController?.pushViewController(searchResultVC, animated: true)
                }
            }
        }
    }
    
    override func viewDidLoad() {
        self.navigationItem.title = "Search"
    }
}

