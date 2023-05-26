//
//  Person.swift
//  ContactList
//
//  Created by Юрий Емелин on 26.05.2023.
//

import Foundation

struct Person {
    
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersonsList() -> [Person] {
        
    }
}
