//
//  SearchResultViewController.swift
//  SearchUserMVP
//
//  Created by ThinhLe on 8/7/18.
//  Copyright © 2018 ThinhLe. All rights reserved.
//

import UIKit

class SearchResultViewController: UITableViewController
{
    var users = [User]()
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let user = users[indexPath.row]
        cell.textLabel?.text = user.login
        return cell
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.title = "Search Result"
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
}
