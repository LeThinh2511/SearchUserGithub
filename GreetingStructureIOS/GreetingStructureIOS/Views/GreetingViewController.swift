//
//  GreetingViewController.swift
//  GreetingStructureIOS
//
//  Created by ThinhLe on 8/7/18.
//  Copyright © 2018 ThinhLe. All rights reserved.
//

import UIKit

class GreetingViewController: UIViewController, GreetingView
{
    var presenter: GreetingViewPresenter! // de present
    
    @IBOutlet weak var greetingLabel: UILabel! // view label
    @IBAction func didTapButton(_ sender: Any) {
        self.presenter.showGreeting()
    }
    
    func setGreeting(greeting: String) {
        greetingLabel.text = greeting
    }
    
    override func viewDidLoad()
    {
        let person = Person(firstName: "Thinh", lastName: "Le")
        presenter = GreetingPresenter(view: self, person: person)
    }
}
