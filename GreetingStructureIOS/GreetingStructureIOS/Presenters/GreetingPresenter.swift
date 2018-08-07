//
//  GreetingViewPresenter.swift
//  GreetingStructureIOS
//
//  Created by ThinhLe on 8/7/18.
//  Copyright © 2018 ThinhLe. All rights reserved.
//

import Foundation


protocol GreetingViewPresenter
{
    init(view: GreetingView, person: Person)
    func showGreeting()
}

class GreetingPresenter: GreetingViewPresenter
{
    unowned var view: GreetingView
    var person: Person
    
    required init(view: GreetingView, person: Person)
    {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        let greeting = "Hello" + " " + self.person.firstName + " " + self.person.lastName
        self.view.setGreeting(greeting: greeting)
    }
}
