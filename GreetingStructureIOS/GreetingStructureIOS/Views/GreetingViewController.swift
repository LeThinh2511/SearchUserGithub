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
    
    var viewModel: GreetingViewModelProtocol!
    {
        didSet
        {
            self.viewModel.greetingDidChange = { [unowned self] viewModel in
                self.greetingLabel.text = viewModel.greeting
            }
        }
    }
    
    
    @IBOutlet weak var greetingLabel: UILabel!
    
    @IBAction func didTapButton(_ sender: Any) {
        self.viewModel.showGreeting()
    }
    
    override func viewDidLoad() {
        let person = Person(firstName: "Thinh", lastName: "Le")
        self.viewModel = GreetingViewModel(person: person)
    }
}
