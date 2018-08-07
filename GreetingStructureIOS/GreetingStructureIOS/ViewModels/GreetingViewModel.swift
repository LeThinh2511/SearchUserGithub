//
//  GreetingView.swift
//  GreetingStructureIOS
//
//  Created by ThinhLe on 8/7/18.
//  Copyright © 2018 ThinhLe. All rights reserved.
//

import Foundation

protocol GreetingViewModelProtocol: class
{
    var greeting: String? { get }
    var greetingDidChange: ((GreetingViewModelProtocol) -> ())? { get set } 
    init(person: Person)
    func showGreeting()
}

class GreetingViewModel: GreetingViewModelProtocol
{
    let person: Person
    
    var greeting: String?
    
    var greetingDidChange: ((GreetingViewModelProtocol) -> ())?
    
    required init(person: Person) {
        self.person = person
    }
    
    func showGreeting() {
        self.greeting = "Hello" + " " + self.person.firstName + " " + self.person.lastName
        self.greetingDidChange!(self)
    }
    
    
}


