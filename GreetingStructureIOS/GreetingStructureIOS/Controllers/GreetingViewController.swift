//
//  GreetingViewController.swift
//  GreetingStructureIOS
//
//  Created by ThinhLe on 8/7/18.
//  Copyright © 2018 ThinhLe. All rights reserved.
//

import UIKit

class GreetingViewController: UIViewController
{
    
    var person: Person!
    
    @IBOutlet weak var greetingLabel: UILabel!
    @IBAction func didTapButton(_ sender: Any) {
        let greeting = "Hello" + " " + self.person.firstName + " " + self.person.lastName
        greetingLabel.text = greeting
    }
    
    override func viewDidLoad() {
        person = Person(firstName: "Thinh", lastName: "Le")
    }
}
